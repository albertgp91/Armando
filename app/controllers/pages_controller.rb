class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
  end

  def receivingday
  end

  def profile
    @user = current_user
    session[:user_info] = action_name
  end

  def avatar
  end


end
