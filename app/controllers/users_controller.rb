class UsersController < ApplicationController

  def show
    @greeting = get_greeting
  end
