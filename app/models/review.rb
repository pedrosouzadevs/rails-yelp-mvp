class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = (0..5)

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: RATING }
end
