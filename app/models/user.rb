class User < ActiveRecord::Base
  has_many :phones
  has_secure_password 
  validates :username, presence: :true 
  validates :username, uniqueness: :true 
end