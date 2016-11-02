class ApartmentListsController < ApplicationController

  def destroy
   apartment_list = ApartmentList.find_by_id(params[:id])
   apartment_list.destroy
   redirect_to(:back)
  end

end
