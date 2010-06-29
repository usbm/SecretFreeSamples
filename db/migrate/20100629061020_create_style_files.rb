class CreateStyleFiles < ActiveRecord::Migration
  def self.up
    create_table :style_files do |t|
      t.integer :style_id

      t.timestamps
    end
    add_index :style_files, :style_id
  end

  def self.down
    drop_table :style_files
  end
end
