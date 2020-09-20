class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates_presence_of :api_key, require: true
  validates :password_digest, presence: true, confirmation: { case_sensitive: true}
  has_secure_password
end
