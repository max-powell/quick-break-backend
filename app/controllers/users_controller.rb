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

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
