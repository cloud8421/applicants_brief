require 'twitter'

Twitter.configure do |config|
  config.consumer_key = 'WD3PE7sSbAWqSOXNEHRoyA'
  config.consumer_secret = 'xsBqNcHelSsjEC1NgKzLZZp9G9Ofey9ZMfqEkk4rlQ'
  config.oauth_token = '343954452-pdnQSENmOOqBBTrwLvTBZRRU4SUeOhd9ouSOgOfB'
  config.oauth_token_secret = 'mlDDVFsI1Pk44fZuHeX6TnP701dbXvuTfrxBYyzEOVU'
end

class MessagePoster

  attr_accessor :message

  def get_message(message, service)
    #send to api
    case service
    when 'twitter'
      send_to_twitter(message)
    when 'rest'
      send_to_twitter(message)
    when 'fs'
      send_to_fs(message)
    end
  end

  def send_to_twitter(message)
    Twitter.update(message)
  end

  def send_to_rest
    
  end

  def send_to_fs
    
  end

end
