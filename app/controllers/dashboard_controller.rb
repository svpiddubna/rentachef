class DashboardController < ApplicationController
  def show
    @user = current_user
    @chef = current_user.chef
    # @booking = Booking.find(params[:id])
    @inviting_bookings = @user.bookings
    @inviting_upcoming_bookings = @inviting_bookings.where("date >= '#{Date.current}'")
    @inviting_past_bookings = @inviting_bookings.where("date < '#{Date.current}'")

    if @chef
      @meeting_bookings = @chef.bookings
      @meeting_upcoming_bookings = @meeting_bookings.where("date >= '#{Date.current}'")
      @meeting_past_bookings = @meeting_bookings.where("date < '#{Date.current}'")
    end
  end
end
