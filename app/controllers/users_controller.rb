class UsersController < ApplicationController
  def account
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    render :account
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new(role: 'coffeeman')
  end

  def create
    @user = User.find(params[:id])
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :middle_name, :ries_id, :email, :password, :password_confirmation)
  end
end
