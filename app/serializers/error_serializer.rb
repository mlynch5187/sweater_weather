class ErrorSerializer
  def self.new(errors)
    { "status": 400,
      "errors": errors.full_messages }
  end

  def self.failure
    { "status": 400,
      "errors": "Those credentials are invalid. Please try again" }
  end
end
