class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :invoice_street
      t.integer :invoice_zip
      t.string :invoice_city
      t.string :invoice_country
      t.string :contact_name
      t.string :contact_email
      t.integer :contact_phone

      t.timestamps
    end
  end
end
