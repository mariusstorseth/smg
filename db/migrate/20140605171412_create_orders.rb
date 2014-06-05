class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :clients
      t.belongs_to :users
      t.belongs_to :offices
      t.integer :software
      t.integer :software_margin
      t.integer :semi
      t.integer :semi_margin
      t.integer :production
      t.integer :production_margin
      t.integer :other
      t.integer :other_margin
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
