class Address < ApplicationRecord
  has_one :reader

  validates :latitude, presence: true
end
