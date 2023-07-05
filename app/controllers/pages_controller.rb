class PagesController < ApplicationController
  def home
    respond_to do |format|
      format.html # Render the default HTML template (home.html.erb)
    end
  end

  def about
    respond_to do |format|
      format.html
    end
  end
  
end
