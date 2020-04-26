class SushiLocator::Restaurant
  attr_accessor :name, :number_of_reviews, :price, :address, :phone_number, :website, :status, :cusine

  @@all = []

  def initialize(name, number_of_reviews, price = nil, website, status)
    @name = name
    @number_of_reviews = number_of_reviews
    @price = price
    @website = website
    if status.include?('No')
      @status = status + "w"
    elsif status.include?('mi')
      @status = status + "n"
    elsif status.include?('toda')
      @status = status + "y"
    else
      @status = nil
    end


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
