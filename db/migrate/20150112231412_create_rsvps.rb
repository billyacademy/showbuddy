class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :user_id, null: false
      t.integer :concert_id, null: false

      t.timestamps
    end

    add_index :rsvps, [:user_id, :concert_id], unique: true
  end
end
