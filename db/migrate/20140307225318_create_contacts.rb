class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.integer :parent_company_id
      t.string :phone_number
      t.boolean :allows_text, :default => true
      t.string :email
      t.string :url
      t.text :description
      t.boolean :is_main
      t.references :office, index: true

      t.timestamps
    end
  end
end
