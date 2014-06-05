class AddMoneyToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :goss_sale, :integer
    add_column :orders, :margin, :integer
  end
end
