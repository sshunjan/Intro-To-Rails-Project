class Read < ApplicationRecord
  belongs_to :reader
  belongs_to :book
end
