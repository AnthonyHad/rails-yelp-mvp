class Review < ApplicationRecord
  belongs_to :restaurant #store restaurant id
  validates  :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: (0..5)
end
