class Api::V1::CarsController < ApplicationController
  # GET /cars/1
  def index; end
  
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
    @car.user = @user
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
    @car = car.find(params[:id])
    if @car.destroy
      render json: { success: true, message: 'car deleted successfully' }, status: :ok
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(
      :name, :description, :image, :type, :model, :year, :price_per_day
    )
  end
end
