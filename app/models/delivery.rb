class Delivery < ApplicationRecord
  belongs_to :customer
  
  def delivery_display
  '〒' + gip_code + ' ' + address + ' ' + address_name
  end
  
end
