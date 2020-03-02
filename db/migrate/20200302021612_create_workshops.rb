class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :name, null: false
      t.integer :category, null: false
      t.string :address, null: false
      t.boolean :wifi, null: false, default: false
      t.integer :seats_number
      t.string :opening_time, null: false
      t.string :price, null: false
      t.text :note
      t.references :station, foreign_key: true
      t.timestamps
    end
  end
end
