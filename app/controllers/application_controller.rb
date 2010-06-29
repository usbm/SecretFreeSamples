class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  protected
  
  def load_visit
    begin
      @visit = Visit.find(session[:visit_id])
    rescue
      @visit = Visit.create(:ip_address => request.remote_ip, :browser => request.env["HTTP_USER_AGENT"], :referrer_url => request.env["HTTP_REFERER"], :style_id => randomize_array(Style.where(:active => true)).first.id)
      session[:visit_id] = @visit.id
    end
  end
  
  def require_admin
    authenticate_or_request_with_http_basic do |username,password|
      username == "admin" && password = "pass69"
    end
  end
  
  def randomize_array(array)
    array.sort_by { rand }
  end
  
end
