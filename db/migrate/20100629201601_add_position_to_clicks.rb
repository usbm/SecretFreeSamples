class AddPositionToClicks < ActiveRecord::Migration
  def self.up
    add_column :clicks, :position, :integer
    add_index :clicks, :position
  end

  def self.down
    remove_column :clicks, :position
  end
end
