class BackgroundSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :url, :photographer, :photographer_url
end
