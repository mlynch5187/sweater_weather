class User < ApplicationRecord
  validates_presence_of :email, uniqueness: true
  validates_presence_of :password, require: true
  validates_presence_of :api_key, require: true
end
