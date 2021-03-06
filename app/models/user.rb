class User < ApplicationRecord
  validates_presence_of :email

  validates_uniqueness_of :email

  validates_confirmation_of :password
  has_secure_password
  has_secure_token :api_key
end
