module ApartmentListsHelper


def find_apartment_list(list, apartment)
apartment.apartment_list.where(list_id:list.id)
end

end
