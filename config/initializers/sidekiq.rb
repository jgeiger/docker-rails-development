Sidekiq.configure_server do |config|
    config.redis = { url: "redis://redis/10" }
end

Sidekiq.configure_client do |config|
    config.redis = { url: "redis://redis/10" }
end
