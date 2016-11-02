module UserHelper

  # def list_to_display
  #  # if user clicks on a specific list return that list
  #   if params[:list_id]
  #     @current_list = current_user.lists.find_by_id(params[:list_id])
  #   else
  #     #other wise just return the current users first list
  #     @current_list = current_user.lists.first
  #   end
  #     @current_list
  # end
  #
  # def sort_apartments
  #   list = list_to_display
  #   if list
  #     #sort the apartments in that list from low to high price
  #     if list.apartments.count > 0
  #     @sorted_apartments = list.apartments.lowest_highest
  #     else
  #       "Add apartments to your list"
  #     end
  #   else
  #     # if the current user has no lists than show this message instead.
  #     "You have no apartments added. Create a listing to begin."
  #   end
  # end
  def display_lists
    current_user.lists
  end

end
