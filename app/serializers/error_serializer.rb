class ErrorSerializer
  def self.new(errors)
    { "status": 400,
      "errors": errors.full_messages }
  end
end
