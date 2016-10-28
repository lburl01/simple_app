#
class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:search]

  def search
    location = params[:search]
    render json: Yelp.client.search(location)
  end
end
