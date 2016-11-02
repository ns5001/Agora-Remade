module UserHelper

  def display_lists
    current_user.lists
  end

  def all_tours
    current_user.tours 
  end

end
