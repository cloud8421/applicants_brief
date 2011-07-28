require 'rest_client'

class RestAdapter

  attr_accessor :url

  def initialize(url)
    self.url = url
  end

  def send(message)
    message_id = Time.now.to_i
    request = RestClient.put "#{self.url}/#{message_id}", message
    puts request.headers[:location]
  end

end

