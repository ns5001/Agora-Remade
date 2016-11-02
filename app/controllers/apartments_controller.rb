class ApartmentsController < ApplicationController
  include ApartmentHelper

  def index
    @apartments = apartment_search
  end

  def show
    @apartment = find_apartment
  end

  def update
    @apartment = find_apartment
    @apartment.update(apartment_params)
    flash[:error] = @apartment.errors.messages
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
      commnet_attributes:[

      :text
    ],
      list_ids: []
    )
  end

end
