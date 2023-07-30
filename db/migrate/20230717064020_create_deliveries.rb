class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      
      t.integer :customer_id, null: false
      t.string :gip_code, null: false
      t.string :address, null: false
      t.string :address_name, null: false

      t.timestamps
    end
  end
end
