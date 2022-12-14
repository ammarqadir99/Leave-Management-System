class UsersController < ApplicationController
  protect_from_forgery with: :null_session
#  before_action :set_user, only: [ :create, :index]

  # GET /users or /users.json
  def index
    render json: User.all
  end
    
  # POST /users 
  def create
      @user = User.new(user_params)
        if @user.save
          redirect_to json: @user , status: :created, location: @user 
        else
          redirect_to json: @user.errors , alert: 'failed to create new user'
        end
  end  
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end
    def destroy
      User.destroy(params[:id])
    end  
  
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :image)
    end  
  end
