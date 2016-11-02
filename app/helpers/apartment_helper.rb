module ApartmentHelper

  def apartment_search
    #user enters a borough. returns apartments from low to high price.s
    Apartment.where(borough:params[:location]).lowest_highest
  end

  def find_apartment
    Apartment.find(params[:id])
  end

  def update_apartment
    @apartment = find_apartment
    @apartment.update(apartment_params)
  end

end
