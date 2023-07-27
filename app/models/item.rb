class Item < ApplicationRecord
  has_one_attached :image
  has_many :itemcarts, dependent: :destroy
  has_many :orderdetails, dependent: :destroy
  has_one_attached :image
  
  
  
end
