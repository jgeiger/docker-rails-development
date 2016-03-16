class DashboardController < ApplicationController
  def index
    @current_host = Hostname.name
    @results = Result.order("created_at DESC").limit(10)
  end
end
