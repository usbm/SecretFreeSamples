class AddPrecisionAndScaleToOfferPayout < ActiveRecord::Migration
  def self.up
    change_column :offers, :payout, :decimal, :precision => 10, :scale => 2
  end

  def self.down
  end
end
