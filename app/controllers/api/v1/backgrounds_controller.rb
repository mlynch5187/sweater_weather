class Api::V1::BackgroundsController < ApplicationController

  def index
    city_images = PexelsService.new.images(params[:location])
  end

  # def retrieve_city(location)
  #   location.split(/[,]/).first
  # end
end
