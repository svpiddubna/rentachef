class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = current_user.bookings
    @upcoming_bookings = @bookings.where("date > '#{Date.current}'")
    @past_bookings = @bookings.where("date < '#{Date.current}'")
  end
end
