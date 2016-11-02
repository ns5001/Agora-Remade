class UsersController < ApplicationController
    include UserHelper
  def show
    #from application helpers
    @greeting = get_greeting
    #from user helpers
    @apartments = sort_apartments
  end

end
