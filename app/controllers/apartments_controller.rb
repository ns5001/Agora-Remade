class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.where(borough:params[:location]).lowest_highest
  end

  def show
    @apartment = Apartment.find_by(id: params[:id])
  end

  def update
    @apartment = Apartment.find_by_id(params[:id])
    @apartment.update(apartment_params)
    flash[:error] = @apartment.errors.messages
    flash[:message] = "Added to List"
    redirect_to(:back)
  end

  def apartment_params
    params.require(:apartment).permit(
      lists_attributes:[
        :name,
        :user_id
      ],
      comment_attributes:[

      :text
    ],
      list_ids: []
    )
  end

end
