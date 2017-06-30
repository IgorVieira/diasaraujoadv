class WelcomeController < ApplicationController
  
  
  def index
    @services = Service.all.order("created_at DESC").limit(3)
  end

  
end
