class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :name, null: false, comment: '施設名称'
      t.integer :category, null: false, comment: '業態'
      t.string :address, null: false, comment: '住所'
      t.boolean :wifi, null: false, default: false, comment: 'wi-fi環境有無'
      t.integer :seats_number, comment: '席数'
      t.string :opening_time, null: false, comment: '営業時間'
      t.string :price, null: false, comment: '利用料・（カフェの場合は）代表的なメニュー'
      t.text :note, comment: '特徴'
      t.references :station, foreign_key: true, comment: '駅ID'
      t.timestamps
    end
  end
end
