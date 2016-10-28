#
class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:search]

  def search
    location = params[:search]
    dog_friendly = { term: params[:term] }
    render json: Yelp.client.search(location, dog_friendly)
  end
end
