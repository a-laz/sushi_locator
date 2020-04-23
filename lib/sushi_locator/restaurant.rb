class SushiLocator::Restaurant
  attr_accessor :name, :number_of_reviews, :price, :address, :phone_number, :website, :status, :cusine

  @@all = []

  def initialize(name, number_of_reviews, price = nil, website)
    @name = name
    @number_of_reviews = reviews
    @price = price
    @website = website
    #attributes.each{|k,v| self.send(("#{k}="), v)}
    save
  end

  def self.all
    SushiLocator::Scraper.scrape_restaurants if @@all.empty?
    @@all
  end

  def save
    self.class.all << self
  end
end
