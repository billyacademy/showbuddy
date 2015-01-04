class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.date :date, null: false
      t.time :time, null: false
      t.string :artist_1, null: false
      t.string :artist_2
      t.string :artist_3
      t.string :artist_4
      t.integer :venue_id, null: false
      t.integer :price
      t.string :url, null: false

      t.timestamps
    end
    add_index :concerts, :venue_id
  end
end
