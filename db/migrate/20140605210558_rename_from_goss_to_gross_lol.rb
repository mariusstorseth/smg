class RenameFromGossToGrossLol < ActiveRecord::Migration
  def change
    rename_column :orders, :goss_sale, :gross_sale
  end
end
