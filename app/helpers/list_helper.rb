module ListHelper
  # used to find the associated apartment_list record. Used in deleting an apartment
  # from a list
  def find_apartment_list(list, apartment)
    apartment_list = ApartmentList.where(list_id:list.id, apartment_id: apartment.id)
    apartment_list.ids
  end

end
