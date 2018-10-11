class Book < ApplicationRecord
  validates :name, presence: true
  validates :isbn, presence: true, uniqueness: true, numericality: { only_integer: true }

  has_many :reads, dependent: :destroy
  has_many :readers, through: :read, dependent: :destroy
end
