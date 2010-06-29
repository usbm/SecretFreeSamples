class CreateClicks < ActiveRecord::Migration
  def self.up
    create_table :clicks do |t|
      t.integer :visit_id
      t.integer :offer_id
      t.boolean :converted, :default => false

      t.timestamps
    end
    add_index :clicks, :visit_id
    add_index :clicks, :offer_id
    add_index :clicks, :converted
  end

  def self.down
    drop_table :clicks
  end
end
