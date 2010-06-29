class Offer < ActiveRecord::Base
  has_many :clicks
  has_attached_file :banner
  
  validates_presence_of :name
  validates_presence_of :payout
  validates_presence_of :url
  validates_attachment_presence :banner
end
