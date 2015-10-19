class User < ActiveRecord::Base
  has_secure_password
  validates :name, :alias, :email, presence: true
  validates :password, length: { in: 8..20 }
  has_many :ideas
  has_many :likes
end
