class Review < ApplicationRecord
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  # presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
