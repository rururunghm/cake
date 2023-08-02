class OrderDetail < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :item
  belongs_to :order
end
