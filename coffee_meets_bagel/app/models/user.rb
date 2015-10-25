class User < ActiveRecord::Base
  has_many :photos
  has_many :likes
  has_secure_password
end
