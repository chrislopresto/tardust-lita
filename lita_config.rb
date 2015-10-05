Lita.configure do |config|
  config.robot.name = 'joebeef'
  config.robot.log_level = :info
  config.robot.adapter = :slack

  config.http.port = ENV['TARDUST_LITA_HTTP_PORT'] || ENV['PORT']
  config.redis[:url] = ENV['TARDUST_LITA_SLACK_REDIS_URL'] || ENV['REDIS_URL']

  config.adapters.slack.token = ENV['TARDUST_LITA_SLACK_API_TOKEN']

  config.handlers.keepalive.minutes = 1
  config.handlers.keepalive.url = 'http://tardust-lita.herokuapp.com'
end
