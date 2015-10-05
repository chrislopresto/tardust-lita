Lita.configure do |config|
  config.http.port            = ENV['TARDUST_LITA_HTTP_PORT'] || ENV['PORT']
  config.robot.name           = 'joebeef'
  config.robot.log_level      = :info
  config.robot.adapter        = :slack
  config.adapters.slack.token = ENV['TARDUST_LITA_SLACK_API_TOKEN']
  config.redis[:url]          = ENV['TARDUST_LITA_SLACK_REDIS_URL'] ||
                                ENV['REDIS_URL']
end
