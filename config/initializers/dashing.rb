# frozen_string_literal: true

Dashing.configure do |config|
  config.redis_host     = 'redis'
  config.redis_port     = '6379'
  # config.redis_password = nil
  config.redis_timeout  = 3

  config.redis_namespace = 'dashing_events'
end
