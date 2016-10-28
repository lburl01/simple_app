#
class LocationController < ApplicationController
  def search
    # parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco')
  end
end
