class ChefsController < ApplicationController
  def index
    @chefs = Chef.where(location: params[:location])
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end
end