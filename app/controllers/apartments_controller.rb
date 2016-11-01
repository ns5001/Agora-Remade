class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.where(borough:params[:location]).lowest_highest
  end

  def show
    @apartment = Apartment.find_by(id: params[:id])
  end
end
