class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: { case_sensitive: true}
  validates :api_key, uniqueness: true

  has_secure_password

  def create_key
    self.update(api_key: ApiGenerator.call)
  end
end
