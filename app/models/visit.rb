class Visit < ActiveRecord::Base
  belongs_to :style
  has_many :clicks
end
