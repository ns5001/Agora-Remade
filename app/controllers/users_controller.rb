class UsersController < ApplicationController
  before_action :authenticate_user!
    include UserHelper

  # def show
  #   #from application helpers
  #   @greeting = get_greeting
  #   #from user helpers
  #   @apartments = sort_apartments
  # end

  def show
    #from application helpers
    @greeting = get_greeting
    #from user helpers
    @lists = display_lists
  end

end
