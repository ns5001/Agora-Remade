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

  def fetch_location
    begin
      location_hash = {}
      output = JSON.parse(open('http://ipinfo.io').read)

      location_hash[:city] = output["city"]
      location_hash[:zip_code] = output["postal"]
      location_hash.to_s
      if location_hash[:city] == "New York"
        location_hash[:city] = "manhattan"
      end
      current_location = location_hash[:city]
      current_location
    rescue
      current_location = "Unable to fetch current location"
    end

  end

end
