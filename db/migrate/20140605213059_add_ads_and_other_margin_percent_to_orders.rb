class AddAdsAndOtherMarginPercentToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :ads, :integer
    add_column :orders, :ads_margin, :integer
    add_column :orders, :ads_coverage_rate, :integer
    add_column :orders, :software_coverage_rate, :integer
    add_column :orders, :semi_coverage_rate, :integer
    add_column :orders, :production_coverage_rate, :integer
    add_column :orders, :other_coverage_rate, :integer
  end
end
