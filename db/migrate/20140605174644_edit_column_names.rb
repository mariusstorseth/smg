class EditColumnNames < ActiveRecord::Migration
  def change
    rename_column :orders, :clients_id, :client_id
    rename_column :orders, :users_id, :user_id
    rename_column :orders, :offices_id, :office_id
  end
end
