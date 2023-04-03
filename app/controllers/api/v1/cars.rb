class Api::V1::CarsController < ApplicationController
  # GET /cars/1
  def show
    car = Car.find(params[:id])

    if car
      render json: car, status: :ok
    else
      render json: car.errors, status: :bad_request
    end
  end
end
