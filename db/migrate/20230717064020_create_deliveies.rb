class CreateDeliveies < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveies do |t|
      
      t.string :gip_code, null: false
      t.string :address, null: false
      t.string :address_name, null: false

      t.timestamps
    end
  end
end
