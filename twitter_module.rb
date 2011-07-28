require 'twitter'

class TwitterAdapter

  def initialize(user_config)
    Twitter.configure do |config|
      config.consumer_key = user_config.consumer_key
      config.consumer_secret = user_config.consumer_secret
      config.oauth_token = user_config.oauth_token
      config.oauth_token_secret = user_config.oauth_token_secret
    end
  end

  def send(message)
    Twitter.update(message)
  end

end
