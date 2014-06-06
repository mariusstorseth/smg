class AddWeightedValues < ActiveRecord::Migration
  def change
    add_column :pipelines, :weighted_gross, :integer
    add_column :pipelines, :weighted_margin, :integer
  end
end
