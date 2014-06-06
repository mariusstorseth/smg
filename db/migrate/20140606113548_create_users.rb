class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.belongs_to :office
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :email
  end
end
