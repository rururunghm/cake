class Order < ApplicationRecord
  
  enum payment_methods: { credit_card: 0, transfer: 1 }
 
end
