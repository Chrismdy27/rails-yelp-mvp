class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true },  inclusion: { in: (0..5),
  message: "the number is not a between 0 and 5" }
  belongs_to :restaurant
end
