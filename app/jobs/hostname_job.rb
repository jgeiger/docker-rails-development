class HostnameJob < ApplicationJob
  queue_as :default

  def perform(enqueued_by_host)
    hostname = Hostname.name
    Result.create!(enqueued_by_host: enqueued_by_host, run_on_host: hostname)
  end
end
