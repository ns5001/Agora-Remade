module ListHelper

  def find_apartment_list(list, apartment)
    join = ApartmentList.find_by(list_id: list.id, apartment_id: apartment.id)
    join.id
  end

end
