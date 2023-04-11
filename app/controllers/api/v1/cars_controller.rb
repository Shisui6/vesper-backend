class Api::V1::CarsController < ApplicationController
  def index
    cars = Car.all

    render json: cars, status: :ok
  end

  # GET /cars/1
  def show
    car = Car.find(params[:id])

    if car
      render json: car, status: :ok
    else
      render json: car.errors, status: :bad_request
    end
  end

  # POST /car/1/rservation
  def create
    @car = Car.new(car_params)
    if @car.save
      render json: {
        status: { success: true, message: 'Car created successfully' }
      }
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /car/1
  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: { success: true, message: 'car deleted successfully' }, status: :ok
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = current_user
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.permit(:name, :description, :image, :classification, :model, :year, :price_per_day, :user_id)
  end
end
