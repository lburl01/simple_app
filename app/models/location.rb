require 'redis'

class Location
  def initialize(location, search_term)
    @location = location
    @search_term = search_term

    load
  end

  def load

    @user_search = "#{@location}:#{@search_term}"

    if new_query?
      search
      save
    else
      response = Redis.current.get(@user_search)
      p response
    end
  end

  def new_query?
    Redis.current.get(@user_search).nil?
  end

  def search
    puts "going to yelp"
    @response = Yelp.client.search(@location, { term: @search_term, limit: 5 })
    # business1 = response.businesses[0]

    # businesses_count = response.businesses.length #tells me how many businesses are returned from api
    # businesses = response.businesses

    # @all_business_info = businesses.each do |business|
    #   data_hash = {
    #     rating: business1.rating,
    #     name: business1.name,
    #     url: business1.url,
    #     categories: business1.categories,
    #     snippet_text: business1.snippet_text,
    #     phone: business1.phone,
    #     address: business1.location.display_address
    #   }
    # end

  end

  def save
    Redis.current.set(@user_search, @response)
  end
end
