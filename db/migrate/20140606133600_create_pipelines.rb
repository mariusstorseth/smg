class CreatePipelines < ActiveRecord::Migration
  def change
    create_table :pipelines do |t|
      t.belongs_to :user
      t.belongs_to :office
      t.belongs_to :client
      t.integer :software
      t.integer :software_margin
      t.integer :software_coverage_rate
      t.integer :semi
      t.integer :semi_margin
      t.integer :semi_coverage_rate
      t.integer :production
      t.integer :production_margin
      t.integer :production_coverage_rate
      t.integer :ads
      t.integer :ads_margin
      t.integer :ads_coverage_rate
      t.integer :other
      t.integer :oter_margin
      t.integer :other_coverage_rate
      t.integer :gross_sale
      t.integer :margin
      t.integer :probability
      t.datetime :est_closing

      t.timestamps
    end
  end
end
