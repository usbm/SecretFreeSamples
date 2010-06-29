class Click < ActiveRecord::Base
  belongs_to :visit
  belongs_to :offer
  
  scope :converted, lambda {
    where(:converted => true)
  }
end
