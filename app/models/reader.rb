class Reader < ApplicationRecord
  belongs_to :address
  belongs_to :country

  has_many :reads
  has_many :books, through :reads
end
