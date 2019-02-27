class DashboardController < ApplicationController
  def show
    @user = current_user
    # @booking = Booking.find(params[:id])
    @bookings = @user.bookings
    @upcoming_bookings = @bookings.where("date > '#{Date.current}'")
    @past_bookings = @bookings.where("date < '#{Date.current}'")

  end
end
