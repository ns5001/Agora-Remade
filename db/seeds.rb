manhattan = Scraper.new
manhattan.insert_index_page_data("manhattan")

queens = Scraper.new
queens.insert_index_page_data("queens")

brooklyn = Scraper.new
brooklyn.insert_index_page_data("brooklyn")

@show_page_scraper = Scraper.new

 Apartment.all.each do |apartment|
   @show_page_scraper.insert_show_page_data(apartment)
 end
