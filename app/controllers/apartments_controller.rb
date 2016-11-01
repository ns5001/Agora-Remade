class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.where(borough:params[:location]).lowest_highest
  end
end
