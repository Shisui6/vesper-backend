class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[create]
  before_action :set_user, only: %i[update destroy]
  before_action :authorized

  def index
    if current_user.admin == true
      @reservations = Reservation.all
    else
      @reservations = current_user.reservations
    end
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
  

  def set_reservation
    @reservation = Reservation.find(params[:id])
    return if @reservation.present?
    json_response 'Cannot get reservation', false, {}, :not_found
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def reservation_params
    params.require(:reservation).permit(:date, :city, :duration, :user_id, :car_id)
  end
end
