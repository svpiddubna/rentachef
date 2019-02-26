class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.chef = Chef.find(params[:chef_id])
    @booking.user = current_user
    @booking.save
    redirect_to chef_booking_path(@booking.chef, @booking)
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
