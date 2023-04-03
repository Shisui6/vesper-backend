class Api::V1::CarsController < ApplicationController
  before_action :set_cars, only: %i[show destroy]
  before_action :set_user, only: %i[create destroy]

  # GET /cars
  def index 

  # GET /cars/1
  def show
    render json: @car
  end

  # POST /cars
  def create

  # DELETE /cars/1
  def destroy

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = car.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:name, :description, :image, :type, :model, :year, :price_per_day, :user_id)
  end
end
end
end