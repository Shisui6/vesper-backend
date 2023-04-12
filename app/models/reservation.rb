class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :date, :city, :duration, presence: true
  validates :duration, numericality: { greater_than: 0, only_integer: true }
end
