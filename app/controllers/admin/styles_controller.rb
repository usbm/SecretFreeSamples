class Admin::StylesController < ApplicationController
  inherit_resources
  layout 'admin'
  
  def create
    create! { admin_styles_url }
  end
  
  def update
    update! { admin_styles_url }
  end
end
