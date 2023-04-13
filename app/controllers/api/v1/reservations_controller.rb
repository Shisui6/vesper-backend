class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: params[:id])
    render json: { message: 'Showing Reservations', reservations: @reservations }, status: :ok
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: { reservation: @reservation }, status: :created
    else
      render json: { errors: @reservation.errors }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :car_name, :city, :duration, :user_id, :car_id)
  end
end
