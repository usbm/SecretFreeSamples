class OffersController < ApplicationController
  before_filter :load_visit
  
  def index
    @offers = Offer.where(:active => true)
  end
end
