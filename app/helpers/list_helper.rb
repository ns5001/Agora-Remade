module ListHelper
  # used to find the associated apartment_list record. Used in deleting an apartment
  # from a list
  def find_apartment_list(list, apartment)
    apartment_list = ApartmentList.where(list_id:list.id, apartment_id: apartment.id)
    apartment_list.ids
  end

# finds comments relating to a specific apartment
  def find_comments(list, apartment)
    apartment_list = ApartmentList.find_by(list_id:list.id, apartment_id: apartment.id)
    apartment_list.comments
  end




end
