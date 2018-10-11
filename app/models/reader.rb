class Reader < ApplicationRecord
  validates :name, presence: true

  belongs_to :address
  belongs_to :country

  has_many :reads , dependent: :destroy
  has_many :books, through: :reads, dependent: :destroy
end
