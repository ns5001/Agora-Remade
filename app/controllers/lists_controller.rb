class ListsController < ApplicationController

  def destroy
    @list = List.find_by_id(params[:list_id])
    @list.destroy
    redirect_to user_lists_path(current_user)
  end
end
