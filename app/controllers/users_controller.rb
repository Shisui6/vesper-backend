class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]

  # POST /users
  def create
    @user = User.new(user_params)
    puts user_params
    if @user.save
      render json: @user, status: :created
    else
      render json: { error: 'Username already taken' }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
