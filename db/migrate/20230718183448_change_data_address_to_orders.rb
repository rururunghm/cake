class ChangeDataAddressToOrders < ActiveRecord::Migration[6.1]
  def up
    change_column :orders, :address, :string
  end
end
