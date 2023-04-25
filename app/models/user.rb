class User < ApplicationRecord
  require 'securerandom'

  has_many :cars
  has_many :reservations

  has_secure_password

  validates :password, length: { minimum: 6 }, presence: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
end
