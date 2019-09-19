class Letter < ApplicationRecord
  validates :content, absence: true
  validates :content, length: { in: 1..140 }
end
