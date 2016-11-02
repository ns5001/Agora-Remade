class ApartmentsController < ApplicationController
  include ApartmentHelper

  def index
    @apartments = apartment_search
  end

  def show
    @apartment = Apartment.find_by(id: params[:id])

  end


  def update
    update_apartment
    flash[:error] = update_apartment.errors.messages
    flash[:message] = "Added to List"
    redirect_to(:back)
  end


  private

  def apartment_params
    params.require(:apartment).permit(
      lists_attributes:[
        :name,
        :user_id
      ],
      comments_attributes:[
      :text
    ],
      list_ids: []
    )
  end

end
