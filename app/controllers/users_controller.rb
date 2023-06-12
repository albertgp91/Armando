class UsersController < ApplicationController
  before_action :set_user, only: %i[
    show request_friendship reject_friendship delete_friendship accept_friendship
  ]

  def update
    user = current_user
    if user.update(user_params)
      # if session[:user_info] == "profile"
      #   redirect_to profile_path
      # else
      #   redirect_to dashboard_path
      # end
      redirect_to profile_path
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
    if Friendship.find_by(user: current_user, friend: @user).present?
      @friendship = Friendship.find_by(user: current_user, friend: @user)
    else
      @friendship = Friendship.find_by(friend: current_user, user: @user)
    end
  end

  def edit
  end

  def request_friendship
    friendship = Friendship.new(user: current_user, friend: @user)

    if friendship.save
      redirect_to user_path(@user), notice: "Request sent!"
    else
      render :show
    end
  end

  def delete_friendship
    friendship = Friendship.where(user: current_user, friend: @user).or(
      Friendship.where(user: @user, friend: current_user)
    ).first
    friendship.rejected!

    redirect_to friendships_path, status: :see_other, notice: "eConnection was successfully deleted!"
  end

  def accept_friendship
    @friendship = Friendship.find_by(friend: current_user, user: @user)
    @friendship.accepted!

    redirect_to friendships_path, notice: "Successful econnection!"
  end

  def reject_friendship
    @friendship.rejected!

    if friendship.save
      redirect_to user_path(@user), notice: "Request successfuly deleted!"
    else
      render :show
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :full_name, :user_name, :receiving_time, :photo, receiving_day: [])
  end
end
