class Item < ApplicationRecord
  has_one_attached :image
  has_many :itemcarts, dependent: :destroy
  has_many :orderdetails, dependent: :destroy
  has_one_attached :image
  
  def image(width, height)
    image.variant(resize_to_limit: [width, height]).processed
  end
  
end
