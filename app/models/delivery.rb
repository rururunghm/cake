class Delivery < ApplicationRecord
  belongs_to :customer
  
  def address_display
  '〒' + gip_code + ' ' + address + ' ' + name
  end
  
end
