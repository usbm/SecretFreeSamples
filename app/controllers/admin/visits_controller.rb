class Admin::VisitsController < ApplicationController
  before_filter :require_admin
  
  inherit_resources
  
  layout 'admin'
  
  def positions
    
  end
  
  protected
  
  def collection
    @visits ||= end_of_association_chain.order('created_at desc').limit(100)
  end
  
end