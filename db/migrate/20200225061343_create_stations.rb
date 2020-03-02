class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name, null: false, comment: '駅名'
      t.timestamps
    end
  end
end
