class Admin::StyleFilesController < ApplicationController
  inherit_resources
  belongs_to :style
  layout 'admin'
  
  def create
    create! { admin_style_style_files_url(@style) }
  end
end
