class ChefsController < ApplicationController
  def index
    @chefs = Chef.where('lower(location) LIKE ?', params[:location].downcase)
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end
end
