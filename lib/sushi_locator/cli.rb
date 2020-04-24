class SushiLocator::CLI

  def call
    puts "The Best Sushi in Columbus!"
    @input = ""
    until @input=='exit'
      get_restaurants
      list_restaurants
      get_user_restaurant
      #next_option
      #get_user_restaurant
    end
  end

  def get_restaurants
    @restaurants = SushiLocator::Restaurant.all
    #binding.pry
  end

  def list_restaurants
    @restaurants.each.with_index(1) do |r,i|
      puts "#{i}. #{r.name}"
    end
  end

  def get_user_restaurant
    chosen_restaurant = gets.strip.to_i
    show_attributes_for(chosen_restaurant)
  end

  def show_attributes_for(chosen_restaurant)
    r = @restaurants[chosen_restaurant - 1]
    puts "Here is the info for #{r.name}: "
    puts "     #{r.number_of_reviews} reviews"
    puts "     #{r.price}"
    puts "     #{r.website}"
  end

  def get_user_input
    @input = gets.strip
  end

end
