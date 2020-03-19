class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true, comment: 'ユーザーID'
      t.references :workshop, foreign_key: true, comment: '施設ID'
      t.timestamps
    end
  end
end
