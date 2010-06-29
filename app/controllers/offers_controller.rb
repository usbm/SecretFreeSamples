class OffersController < ApplicationController
  before_filter :load_visit
  
  def index
    @offers = Offer.where(:active => true)
    render :inline => @visit.style.code
  end
end
