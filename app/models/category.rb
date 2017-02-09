class Category < ApplicationRecord
  has_many :games
  validates :genre, presence: true
end
