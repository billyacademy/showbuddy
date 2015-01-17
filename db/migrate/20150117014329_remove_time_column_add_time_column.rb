class RemoveTimeColumnAddTimeColumn < ActiveRecord::Migration
  def change
    remove_column :concerts, :time, :time, null: false
    add_column :concerts, :time, :string, null:false
  end
end
