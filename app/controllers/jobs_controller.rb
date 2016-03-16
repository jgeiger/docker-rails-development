class JobsController < ApplicationController
  # POST /jobs
  def create
    enqueued_by_host = Hostname.name
    HostnameJob.perform_later(enqueued_by_host)
    redirect_to(:root)
  end
end
