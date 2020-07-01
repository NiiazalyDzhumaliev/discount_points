class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(current_user.id)
  end
  

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  private

  def user_params
    params.require(:user).permit(:name, :username)
  end
  
end
