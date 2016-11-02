class ApartmentListsController < ApplicationController
  include ApartmentListsHelper

  def destroy
    @apartment_list = ApartmentList.find(params[:id])
    @apartment_list.destroy
    redirect_to(:back)
  end

end
