class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
