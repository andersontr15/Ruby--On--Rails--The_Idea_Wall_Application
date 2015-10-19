class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy 
  has_many :ideas_liked, through: :likes, source: :like
  validates :idea, presence: true
end
