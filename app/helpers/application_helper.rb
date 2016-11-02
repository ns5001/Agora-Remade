module ApplicationHelper

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
