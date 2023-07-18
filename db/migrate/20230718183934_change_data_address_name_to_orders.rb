class ChangeDataAddressNameToOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :address_name, :string
  end
end
