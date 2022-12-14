class LeaveTypesController < ApplicationController
  before_action :set_leave_type, only: %i[ show edit update destroy ]

  # GET /leave_types or /leave_types.json
  def index
    @leave_types = LeaveType.all
  end

  # GET /leave_types/1 or /leave_types/1.json
  def show
  end

  # GET /leave_types/new
  def new
    @leave_type = LeaveType.new
  end

  # GET /leave_types/1/edit
  def edit
  end

  # POST /leave_types or /leave_types.json
  def create
    @leave_type = LeaveType.new(leave_type_params)

    respond_to do |format|
      if @leave_type.save
        format.html { redirect_to leave_type_url(@leave_type), notice: "Leave type was successfully created." }
        format.json { render :show, status: :created, location: @leave_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_types/1 or /leave_types/1.json
  def update
    respond_to do |format|
      if @leave_type.update(leave_type_params)
        format.html { redirect_to leave_type_url(@leave_type), notice: "Leave type was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_types/1 or /leave_types/1.json
  def destroy
    @leave_type.destroy

    respond_to do |format|
      format.html { redirect_to leave_types_url, notice: "Leave type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_type
      @leave_type = LeaveType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_type_params
      params.require(:leave_type).permit(:leave_name, :paid_unpaid, :days_allowd, :remarks)
    end
end
