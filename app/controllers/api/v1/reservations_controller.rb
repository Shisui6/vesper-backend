class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[create]
  before_action :set_user, only: %i[update destroy]

  def index
    @reservations = Reservation.all
    render json: { message: 'Showing Reservations', reservations: @reservations }, status: :ok
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.car_id = Car.find(params[:car_id])

    if @reservation.save
      render json: { reservation: @reservation }, status: :created
    else
      render json: { errors: @reservation.errors }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :city, :duration)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
