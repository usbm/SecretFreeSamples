class Style < ActiveRecord::Base
  has_many :style_files
  has_many :visits
  has_many :clicks, :through => :visits
  
  validates_presence_of :name
  validates_presence_of :code
end
