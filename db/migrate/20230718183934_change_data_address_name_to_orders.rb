class ChangeDataAddressNameToOrders < ActiveRecord::Migration[6.1]
  def up
    change_column :orders, :address_name, :string
  end
end
