class Book < ApplicationRecord
  has_many :reads
  has_many :readers, through :read
end
