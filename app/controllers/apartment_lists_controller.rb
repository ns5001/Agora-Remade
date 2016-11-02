class ApartmentListsController < ApplicationController
  include ApartmentListsHelper

  def destroy
    @apartment_list = ApartmentList.find(params[:id])
    @apartment_list.destroy
    flash[:message] = "Apartment Removed from List"
    redirect_to(:back)
  end

end
