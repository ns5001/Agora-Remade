class UsersController < ApplicationController

  def show
    @greeting = get_greeting
    @apartments = sort_apartments
  end
  
end
