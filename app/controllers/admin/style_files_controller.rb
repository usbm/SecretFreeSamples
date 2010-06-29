class Admin::StyleFilesController < ApplicationController
  before_filter :require_admin
  
  inherit_resources
  belongs_to :style
  
  layout 'admin'
  
  def create
    create! { admin_style_style_files_url(@style) }
  end
end
