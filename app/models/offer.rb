class Offer < ActiveRecord::Base
  has_many :clicks
  has_attached_file :banner
end
