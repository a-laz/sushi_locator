class SushiLocator::Scraper
  def self.scrape_restaurants
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Restaurants-g50226-c38-Columbus_Ohio.html"))

    restaurants = doc.css("div.restaurants-list-List__wrapper--3PzDL div._1llCuDZj")
    #name
    r.css("a._15_ydu6b").text
    #review
    r.css("span._10feygW_").text
    #price
    r.css("span._1p0FLy4T").text
    #website
    r.css("a._15_ydu6b").attribute("href")
  end

end
