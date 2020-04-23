require_relative "./sushi_locator/version"
require_relative "./sushi_locator/cli.rb"
require_relative "./sushi_locator/restaurant.rb"
require_relative "./sushi_locator/scraper.rb"

require "nokogiri"
require "open-uri"
require "pry"
module SushiLocator
  class Error < StandardError; end
  # Your code goes here...
end
