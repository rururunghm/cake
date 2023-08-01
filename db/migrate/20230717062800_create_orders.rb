class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.integer :customer_id,null: false
      t.integer :address, null: false
      t.integer :gip_code, null: false
      t.integer :address_name, null: false
      t.integer :payment_methods, null: false
      t.integer :invoice_amount, null: false
      t.integer :postage, null: false
      
      
      t.timestamps
    end
  end
end
