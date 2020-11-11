class Review < ApplicationRecord
  RATING = (0..5).to_a.freeze
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
  belongs_to :restaurant
end
