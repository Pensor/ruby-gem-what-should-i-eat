require "what_should_i_eat/version"
require 'net/http'
require 'json'


module WhatShouldIEat
  class Error < StandardError; end
  def self.search_for_recipe
    result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
    recipes = JSON.parse(result)
    recipe = recipes.first['items'].first['url']
    puts recipe
  end
end
