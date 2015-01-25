class AddTimestampsToMatches < ActiveRecord::Migration
  def change
    add_timestamps(:matches)
  end
end
