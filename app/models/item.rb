class Item < ApplicationRecord
  belongs_to :customers
  has_one_attached :image
end
