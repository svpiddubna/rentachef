class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @chefs = Chef.where('lower(location) LIKE ?', params[:location].downcase)
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end
end
