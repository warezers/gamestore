class Game < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :year, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :coverpath, presence: true
end
