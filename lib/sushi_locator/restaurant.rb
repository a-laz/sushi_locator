class SushiLocator::Restaurant
  attr_accessor :name, :reviews, :price, :address, :phone_number, :website

  @@all = []

  def initialize(name, reviews, price, address, phone_number, url)
    @name = name
    @reviews = reviews
    @price = price
    @address = address
    @phone_number = phone_number
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
