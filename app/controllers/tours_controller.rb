class ToursController < ApplicationController

  def new
    Tour.new
  end

  def create
    tour = Tour.find_or_create_by(tour_params)
    flash[:error] = tour.errors.messages[:booked].first
    redirect_to(:back)
  end

  def destroy
    tour = Tour.find_by_id(params[:id])
    tour.destroy
    user_path(current_user)
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
