class SushiLocator::Restaurant
  attr_accessor :name, :number_of_reviews, :price, :address, :phone_number, :website, :status, :cusine

  @@all = []

  def initialize(name, number_of_reviews, status, price, url)
    @name = name
    @number_of_reviews = reviews
    @staus = status
    @price = price
    @website = url
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
