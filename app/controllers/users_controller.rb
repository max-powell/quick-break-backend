class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: 'user destroyed'}
  end

  def login
    user = User.find_by_name(params[:name])
    if user
      render json: user
    else
      render json: {error: 'User not found'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
