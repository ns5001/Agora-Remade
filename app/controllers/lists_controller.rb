require 'pry'
class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create

    @list = List.find_by(list_params)
    if @list
      flash[:error] = "List already exists"
    else
      current_user.lists.create(list_params)
    end
    redirect_to user_path(current_user)
  end

  def show
    
    @list = List.find_by_id(params[:id])
  end

  def destroy
   @list = List.find_by(id: params[:id])
   @list.destroy
   redirect_to(:back)
 end

  private
  def list_params
    params.require(:list).permit(:name)
  end

end
