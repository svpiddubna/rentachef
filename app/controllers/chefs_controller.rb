class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @chefs = Chef.all
    @chefs = @chefs.where('lower(location) LIKE ?', params[:location].downcase) if params[:location].present?
    @chefs = @chefs.where('lower(cuisine) LIKE ?', params[:cuisine].downcase) if params[:cuisine].present?
    @chefs = @chefs.where(@chefs.arel_table[:rate].lt(params[:rate])) if params[:rate].present?
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end
end

