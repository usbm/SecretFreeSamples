class CreateStyles < ActiveRecord::Migration
  def self.up
    create_table :styles do |t|
      t.string :name
      t.text :code
      t.boolean :active

      t.timestamps
    end
    add_index :styles, :active
  end

  def self.down
    drop_table :styles
  end
end
