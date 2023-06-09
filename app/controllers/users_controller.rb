class UsersController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def update
    user = current_user
    if user.update(user_params)
      if session[:user_info] == "profile"
       redirect_to profile_path
      else
        redirect_to dashboard_path
      end
    else
      render :receiving_day, status: :unprocessable_entity
    end
  end

  def index
    @users = User.all
    if params[:query].present?
      @users = @users.where(user_name: (params[:query]))
    end
  end

  def show
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:email, :full_name, :user_name, :receiving_time, :photo, receiving_day: [])
  end

end
