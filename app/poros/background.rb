class Background
  attr_reader :id, :url, :photographer, :photographer_url

  def initialize(background_info)
    @url = background_info[:url]
    @photographer = background_info[:photographer]
    @photographer_url = background_info[:photographer_url]
  end
end
