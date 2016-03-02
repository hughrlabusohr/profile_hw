class ProfilesController < ApplicationController
  def new
  end

  def create
    @user_name = UserProfile.new(user_name: params["user_name"])
    render json: @user_name
  end
end
