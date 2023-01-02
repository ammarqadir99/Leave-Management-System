class UsersController < ApplicationController

  # GET /users or /users.json
  def index
    render json: User.all
  end
  
  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
    if @user.present?
      render json: @user
    else
      render json: @user.errors, alert: "User not found"
    end
  end

  # GET /users/new
  def new
    render json: User.new
  end
  
  # GET /users/1/edit
  def edit
    render json: User.find(params[:id])
  end
    
  # POST /users 
  def create
      @user = User.new(user_params)
        if @user.save
          render json: @user , status: :created, location: @user 
        else
          render json: @user.errors , alert: 'failed to create new user'
        end
  end  
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: @user.id, :notice => "User was successfully destroyed."
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end
  
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :contact, :image, :role_id)
    end  
  
end