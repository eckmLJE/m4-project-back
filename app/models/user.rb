class User < ApplicationRecord
  has_and_belongs_to_many :events
  has_secure_password

  has_many :comments

end
