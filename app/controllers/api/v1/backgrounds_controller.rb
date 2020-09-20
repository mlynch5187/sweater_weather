class Api::V1::BackgroundsController < ApplicationController

  def index
    @city_image = PexelsService.new.images(params[:location])
  end
end
