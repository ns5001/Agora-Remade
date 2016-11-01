class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  def current_hour
    time = Time.new
    time.hour
  end

  def get_greeting
    if current_hour < 12
      greeting = "Good Morning"
    elsif current_hour > 12 && current_hour < 18
      greeting = "Good Afternoon"
    else
      greeting = "Good Evening"
    end
    greeting
  end


end
