class Admin::DashboardController < ApplicationController
  before_filter :require_admin
  
  layout 'admin'
  
  def index
    
  end
  
  def clear_session
    session[:visit_id] = nil
    redirect_to('/')
  end
end