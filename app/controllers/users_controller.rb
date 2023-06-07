class UsersController < ApplicationController
  def update
    if user.update(user_params)
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :full_name, :user_name, :receiving_day, :receiving_time)
  end

end
