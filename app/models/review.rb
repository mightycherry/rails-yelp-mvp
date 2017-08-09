class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false,}
  validates :content, presence: true
  validates :rating, presence: true, numericality: true
end
