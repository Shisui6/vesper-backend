class Api::V1::CarsController < ApplicationController
  before_action :set_cars, only: %i[show]

  # GET /cars/1
  def show
    if car
      render json: car, status: :ok
    else
      render json: car.errors, status: :bad_request
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    car = Car.find(params[:id])
  end

  # # Only allow a list of trusted parameters through.
  # def car_params
  #   params.require(:car).permit(:name, :description, :image, :type, :model, :year, :price_per_day, :user_id)
  # end
end
