class StyleFile < ActiveRecord::Base
  belongs_to :style
  has_attached_file :attachment
  validates_attachment_presence :attachment
end
