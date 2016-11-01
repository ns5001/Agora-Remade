class UsersController < ApplicationController

  def show
    @greeting = get_greeting
    @apartments = sort_apartments
  end

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
      @sorted_apartments = list.apartments.sort_by do |apartment|
        apartment[:price_range]
      end
    end 
  end

end
