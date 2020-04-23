class SushiLocator::CLI

  def call
    puts "The Best Sushi in Columbus!"
    @input = ""
    until @input=='exit'
      get_restaurants
      #list_restaurants
      #get_user_restaurant
    end
  end

  def get_restaurants
    @restaurants = SushiLocator::Restaurant.all
  end

  def list_restaurants
    @restauarants.each.with_index(1) do |r,i|
      puts "#{i}. #{r.name}"
    end
  end

  def show_restaurant(restaurant)
  end

  def get_user_input
    @input = gets.strip
  end

end
