class ChangeDataGipCodeToOrders < ActiveRecord::Migration[6.1]
  def up
    change_column :orders, :gip_code, :string
  end
end
