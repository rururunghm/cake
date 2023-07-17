class CreateOrderdetails < ActiveRecord::Migration[6.1]
  def change
    create_table :orderdetails do |t|
      
      t.integer :purchase_price, null: false
      t.integer :amount, null: false
      t.integer :production_status, null: false
      
      

      t.timestamps
    end
  end
end
