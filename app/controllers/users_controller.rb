class UsersController < ApplicationController
    include UserHelper
  def show
    # binding.pry
    @greeting = get_greeting
    @apartments = sort_apartments
  end

end
