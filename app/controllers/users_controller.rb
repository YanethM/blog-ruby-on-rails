class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[index edit update destroy
                                          following followers]
  before_action :correct_user,   only: %i[edit update]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def following
    @title = 'Following'
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = 'Followers'
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end
end
