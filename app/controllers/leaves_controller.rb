class LeavesController < ApplicationController
  #protect_from_forgery with: :null_session
  
  def index
    @leaves = Leave.all
    render json: @leaves
  end

  def show
    @leave = Leave.where(id: params[:id])
    if @leave.nil?
      render json: { error: "Leave not found" }
    else
      render json: @leave
    end
  end

  def new
    @leave = Leave.new
  end
  
  def create
    @leave = Leave.new(leave_params)
    if @leave.save
      redirect_to leave_url(@leave), notice: 'Leave was successfully created.'
      #render json:@leave, status: :created, location: @leave }
    else
      # render :new, status: :unprocessable_entity }
      render json: @leave.errors, status: :unprocessable_entity
    end
  end

  def update
    @leave = Leave.find(params[:id])
    if @leave.update(leave_params)
      redirect_to leave_url(@leave), notice: 'User was successfully updated.'
      #render json:@leave, status: :ok, location: @leave
    else
      # render :edit, status: :unprocessable_entity }
      render json: @leave.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    @leave = Leave.find(params[:id])
    @leave.destroy

    respond_to do |format|
      # redirect_to leave_index_url, notice: "User was successfully destroyed." }
      format.json { redirect_to leave_index_url, status: :ok, location: @leave }
    end
  end

  def my_leaves
    # @user = User.find( current_user.id )
    @leaves = Leave.all.where('user_id = ?', leave_params[:user_id]).where('created_at >=? ', Time.now.beginning_of_year )

    if leave_params[:leave_name] == 'sick'
      @leave_type = LeaveType.find_by(:leave_name => leave_params[:leave_name])
      @leaves_by = @leaves.where( 'leave_types_id =?', @leave_type.id )
      
    elsif leave_params[:leave_name] == 'casual'
      @leave_type = LeaveType.find_by(:leave_name => leave_params[:leave_name])      
      @leaves_by = @leaves.where( 'leave_types_id =?', @leave_type.id )

    else #params[:leave_name] == 'none'
      @leaves_by = @leaves
    end

    @leaves_by_month =@leaves_by.group_by { |t| t.created_at.strftime("%B %Y")}
    render json: @leaves_by_month
  end
  
  private
    def set_leave(id)
      @leave = Leave.find_by(id)
    end

    # Only allow a list of trusted parameters through.
    def leave_params
      params.require(:leave).permit(:leave_name, :leave_from, :leave_to, :remarks, :user_id, :leave_types_id)
    end
  end