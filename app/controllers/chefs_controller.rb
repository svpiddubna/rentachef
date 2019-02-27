class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.first_name = current_user.first_name
    @chef.last_name = current_user.last_name
    if @chef.save
      redirect_to chef_path(@chef), notice: "You're ready to go!"
    else
      render :new
    end
  end

  private

  def chef_params
    params.require(:chef).permit(:photo, :photo_cache, :description, :cuisine, :location, :rate)
  end
end
