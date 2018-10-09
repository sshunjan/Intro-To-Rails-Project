class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :readers
end
