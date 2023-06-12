class FriendshipsController < ApplicationController
  # When sending a friend request to the user with id params[:user_id]
  def index
    @friends = current_user.connected_friends
    @received_friends = current_user.received_friends
  end
end
