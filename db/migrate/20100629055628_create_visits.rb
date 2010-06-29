class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.integer :style_id
      t.string :referrer_url
      t.string :referrer_keywords
      t.integer :referrer_page
      t.string :browser
      t.string :ip_address

      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
