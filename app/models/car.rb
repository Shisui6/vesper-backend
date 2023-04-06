class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations

  has_one_attached :image
  validates :name, format: { with: /[a-zA-Z]/ }, presence: true
  validates :description, length: { maximum: 250 }, presence: true
  validates :image, presence: true
  validates :type, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price_per_day, numericality: { greater_than_or_equal_to: 0 }, presence: true
end
