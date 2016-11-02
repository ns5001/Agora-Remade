class ToursController < ApplicationController
  include TourHelper

  def index

    @tours = current_user.tours
  end

  def create

    tour = Tour.find_or_create_by(tour_params)

    flash[:error] = tour.errors.messages[:booked].first
    if !flash[:error]
      flash[:message] = "Tour successfully booked."
    end
    redirect_to(:back)
  end

  def destroy
    tour = Tour.find_by_id(params[:id])
    tour.destroy
    flash[:message] = "Tour removed from list"
    redirect_to(:back)
  end

  private

  def tour_params
    params.require(:tour).permit(
      :booked,
      :user_id,
      :apartment_id
    )
  end

end
