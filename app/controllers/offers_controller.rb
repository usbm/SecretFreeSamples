class OffersController < ApplicationController
  before_filter :load_visit
  
  def index
    @offers = randomize_array(Offer.where(:active => true))
    render :inline => @visit.style.code
  end
  
  def show
    @offer = Offer.find(params[:id])
    click = Click.create(:visit => @visit, :offer => @offer, :position => params[:p])
    redirect_to @offer.url# + "&subid=#{click.id}"
  end
end
