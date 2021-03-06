class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy, :update]
  def show
    @location = params[:location]
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.chef = Chef.find(params[:chef_id])
    @booking.user = current_user
    @booking.save
    @location = params[:booking][:location]
    redirect_to chef_booking_path(@booking.chef, @booking, location: @location)
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  def update
    @booking.update(confirmed: true)
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
