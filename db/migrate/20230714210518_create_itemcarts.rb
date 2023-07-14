class CreateItemcarts < ActiveRecord::Migration[6.1]
  def change
    create_table :itemcarts do |t|
      
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
