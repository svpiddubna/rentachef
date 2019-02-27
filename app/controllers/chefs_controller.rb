class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @chef = Chef.new
  end

  def index
    if params[:location].present?
      @chefs = Chef.where('lower(location) LIKE ?', params[:location].downcase)
    else
      @chefs = Chef.all
    end
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end
end
