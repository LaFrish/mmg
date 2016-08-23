class UsersController < ApplicationController

  def index
    if current_user
      @users = current_user.users
    else
      @users = User.all
    end
  end

  def new
    @users = User.new
  end

  def create
      @user = User.create!(user_params)

      redirect_to users_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit()
  end
end
