require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats_json = open(url).read
    @flats = JSON.parse(flats_json)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats_json = open(url).read
    flats = JSON.parse(flats_json)

    @flat = flats.find { |flat| flat["id"] == params[:id].to_i }
  end
end
