class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:search_results]

  def search
  end

  def search_results
    location_list = Location.new(params[:search], params[:term])
    redirect_to '/results'
  end

  def results
    @all_business_info = Location.all
  end

end
