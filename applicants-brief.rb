require './twitter_module'
require './rest_adapter'

class MessagePoster

  attr_accessor :config

  def initialize(config)
    self.config = config
  end

  def put_message(message, service)
    #send to api
    case service
    when 'twitter'
      twitter = TwitterAdapter.new(self.config)
      twitter.send(message)
    when 'rest'
      rest = RestAdapter.new(self.config)
      rest.send(message)
    when 'fs'
      fs = FileSystemAdapter.new(self.config)
      fs.send(message)
    end
  end

end


###Runtime
@twitter_config = {
  :consumer_key => 'WD3PE7sSbAWqSOXNEHRoyA',
  :consumer_secret => 'xsBqNcHelSsjEC1NgKzLZZp9G9Ofey9ZMfqEkk4rlQ',
  :oauth_token => '343954452-pdnQSENmOOqBBTrwLvTBZRRU4SUeOhd9ouSOgOfB',
  :oauth_token_secret => 'mlDDVFsI1Pk44fZuHeX6TnP701dbXvuTfrxBYyzEOVU'
}
REST_CONFIG = 'http://nb-data-store.heroku.com'

message = MessagePoster.new(REST_CONFIG)
message.put_message('hello world', 'rest')
