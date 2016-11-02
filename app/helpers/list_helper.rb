module ListHelper
  # used
  def find_apartment_list(list, apartment)
    apartment_list = ApartmentList.where(list_id:list.id, apartment_id: apartment.id)
    apartment_list.ids
  end

end
