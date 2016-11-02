module ApartmentHelper

  def apartment_search
    #user enters a borough. returns apartments from low to high price.s
    Apartment.where(borough:params[:location]).lowest_highest
  end

  def find_apartment
    Apartment.find(params[:id])
  end

  def top_3_listings
     Apartment.most_popular
  end
end
