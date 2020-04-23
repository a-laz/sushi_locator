class SushiLocator::Scraper
  def self.scrape_restaurants
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Restaurants-g50226-c38-Columbus_Ohio.html"))

    restaurants = doc.css("div.restaurants-list-List__wrapper--3PzDL div._1llCuDZj")
    restaurants.each do |r|
      at = []
      at << name = r.css("a._15_ydu6b").text
      at << number_of_reviews = r.css("div.MIajtJFg span.EHA742uW span._1p0FLy4t").text.split('reviews').first.strip
      at << price = r.css("div.MIajtJFg span.EHA742uW span._1p0FLy4t").text.split(/\w(?=[$])/).last unless !price.include?('$')
      at << website = "https://tripadvisor.com" + r.css("a._15_ydu6b").attribute("href")
      SushiLocator::Restaurant.new(at)
    #name
    #r.css("a._15_ydu6b").text
    #number of reviews
    #r.css("div.MIajtJFg span.EHA742uW span._1p0FLy4t").text.split('reviews').first.strip
    #price
    #r.css("div.MIajtJFg span.EHA742uW span._1p0FLy4t").text.split(/\w(?=[$])/).last
    # if price exsists
    #website
    #r.css("a._15_ydu6b").attribute("href")
  end

end