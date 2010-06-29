class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :name
      t.decimal :payout
      t.string :url
      t.boolean :active

      t.timestamps
    end
    
    add_index :offers, :active
  end

  def self.down
    drop_table :offers
  end
end
