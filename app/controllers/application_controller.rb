class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  protected
  
  def load_visit
    begin
      @visit = Visit.find(session[:visit_id])
    rescue
      @visit = Visit.create(:ip_address => request.remote_ip, :browser => request.env["HTTP_USER_AGENT"], :referrer_url => request.env["HTTP_REFERER"])#, :style_id => Style.where(:active => true).order('random()').first.id)
      session[:visit_id] = @visit.id
    end
  end
end
