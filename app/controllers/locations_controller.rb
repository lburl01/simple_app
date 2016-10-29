require 'pry'

class LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:search_results]
  respond_to :html, :xml, :json

  def search
  end

  def search_results
  end

  def results
  end

end
