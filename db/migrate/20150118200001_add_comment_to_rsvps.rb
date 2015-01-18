class AddCommentToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :comment, :string
  end
end
