module UserHelper

  def list_to_display

    if params[:list_id]
      @current_list = current_user.lists.find_by_id(params[:list_id])
    else
      @current_list = current_user.lists.first
    end
      @current_list
  end

  def sort_apartments
    list = list_to_display
    if list
      @sorted_apartments = list.apartments.lowest_highest
    else
      "You have no apartments added. Create a listing to begin."
    end
  end

end
