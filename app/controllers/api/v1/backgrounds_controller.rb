class Api::V1::BackgroundsController < ApplicationController
  def index
    background_info = PexelsService.new.images(params[:location])
    render json: BackgroundSerializer.new(Background.new(background_info))
  end
end
