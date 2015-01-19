class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :concert_id
      t.string :status, null: false, default: "pending"
    end

    add_index :matches, [:sender_id, :receiver_id, :concert_id], unique: true
  end
end
