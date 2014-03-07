class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :suite_number
      t.integer :x_coord
      t.integer :y_coord

      t.timestamps
    end
  end
end
