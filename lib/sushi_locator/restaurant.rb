class SushiLocator::Restaurant
  attr_accessor :name, :number_of_reviews, :price, :address, :phone_number, :website, :status, :cusine

  @@all = []

  def initialize(attributes)
    #@name = name
    #@number_of_reviews = reviews
    #@price = price
  #  @website = url
    attributes.each{|k,v| self.send(("#{k}="), v)}
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
