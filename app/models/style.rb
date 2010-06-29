class Style < ActiveRecord::Base
  has_many :style_files
  has_many :visits
end
