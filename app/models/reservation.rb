class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :date, :city, :duration, presence: true
  validates :duration, numericality: { greater_than: 0 }
  validate :check_availability

  private

  def check_availability
    return unless car.reservations.where(date:).any?

    errors.add(:base, 'Car is already reserved for this date')
  end
end
