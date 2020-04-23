class SushiLocator::Scraper
  def self.scrape_restaurants
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Restaurants-g50226-c38-Columbus_Ohio.html"))

    restaurants = doc.css("div.restaurants-list-List__wrapper--3PzDL div._1llCuDZj")
    #name
    r.css("a._15_ydu6b").text
    #number of reviews
    r.css("div.MIajtJFg span.EHA742uW span._1p0FLy4t").text.split('reviews').first.strip
    #price
    r.css("div.MIajtJFg span.EHA742uW span._1p0FLy4t").text.split(/\w(?=[$])/).last
    #website
    r.css("a._15_ydu6b").attribute("href")
  end

end
