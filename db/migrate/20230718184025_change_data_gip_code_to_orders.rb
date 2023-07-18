class ChangeDataGipCodeToOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :gip_code, :string
  end
end
