class Users::RelationshipsContoller < ApplicationController
  before_action :require_login

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unffollow(@user)
  end
end
