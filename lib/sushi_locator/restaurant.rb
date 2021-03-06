class SushiLocator::Restaurant
  attr_accessor :name, :number_of_reviews, :price, :website, :status

  @@all = []

  def initialize(name, number_of_reviews, price = nil, website, status)
    @name = name
    @number_of_reviews = number_of_reviews
    @price = price
    @website = website
    @status = status
    #attributes.each{|k,v| self.send(("#{k}="), v)}
    save
  end

  def self.all
    SushiLocator::Scraper.scrape_restaurants if @@all.empty?
    @@all
  end

  def save
    @@all << self
  end
end
