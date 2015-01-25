class ChangeMatchesColumns < ActiveRecord::Migration
  def change
    change_column :matches, :sender_id, :integer, null: false
    change_column :matches, :receiver_id, :integer, null: false
    change_column :matches, :concert_id, :integer, null: false
  end
end
