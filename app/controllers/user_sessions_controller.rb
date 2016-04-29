class UserSessionsController < ApplicationController
  skip_before_action :require_user?, only: [:new, :create]

  def new
    unless current_user
      @user_session = UserSession.new
    else
      redirect_to root_path
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to account_path
    else
      redirect_to login_path
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to login_path
  end
end
