class RemoveColumnPrice < ActiveRecord::Migration
  def change
    remove_column :concerts, :price, :integer
  end
end
