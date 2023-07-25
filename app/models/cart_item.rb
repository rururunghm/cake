class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :cart_item
  has_one_attached :image
end
