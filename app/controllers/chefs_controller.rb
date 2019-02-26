class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @chefs = Chef.where(location: params[:location])
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
