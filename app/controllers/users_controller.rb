class UsersController < ApplicationController
  def update
    user = current_user
    if user.update(user_params)
      redirect_to dashboard_path
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

  private

  def user_params
    params.require(:user).permit(:email, :full_name, :user_name, :receiving_day, :receiving_time)
  end

end
