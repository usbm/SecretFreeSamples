class Admin::OffersController < ApplicationController
  before_filter :require_admin
  
  inherit_resources
  
  layout 'admin'
end
