class Item < ApplicationRecord
  has_many :locations
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
