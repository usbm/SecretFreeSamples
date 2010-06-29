class Click < ActiveRecord::Base
  belongs_to :visit
  belongs_to :offer
end
