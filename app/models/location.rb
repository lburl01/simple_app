# require 'redis'
# require 'pry'
# require 'json'
# require 'yelp'
#
# class Location
#   def initialize(location, search_term)
#     @location = location
#     @search_term = search_term
#
#     # load
#   end
#
#   def load
#
#     @user_search = "#{@location}:#{@search_term}"
#
#     if new_query?
#       search
#       save
#       response = Redis.current.get(@user_search)
#       p response
#     else
#       response = Redis.current.get(@user_search)
#       p response
#     end
#   end
#
#   def new_query?
#     Redis.current.get(@user_search).nil?
#   end
#
#   def search
#     puts "going to yelp"
#     response = client.search(@location, { term: @search_term, limit: 2 })
#     # binding.pry
#     @businesses = response.businesses
#     # businesses_count = response.businesses.length #tells me how many businesses are returned from api
#     # businesses = response.businesses
#
#     # @all_business_info = []
#     # counter = 0
#     # business_array.each do |business|
#     #   counter =+ 1
#     #   data_hash = { counter => {
#     #     rating: business.rating,
#     #     name: business.name,
#     #     url: business.url,
#     #     categories: business.categories,
#     #     snippet_text: business.snippet_text,
#     #     phone: business.phone,
#     #     address: business.location.display_address
#     #   }}
#     #   @all_business_info << data_hash
#     # end
#   end
#
#   def save
#     Redis.current.set(@user_search, @businesses)
#   end
# end
