require "em-http-request"
module HttpHelper
  def call_http(current_fiber, url, method = 'get', params = nil) 
    http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
    http.errback do  |response|
      current_fiber.resume(response)
    end 
    http.callback do |response|
      r = JSON.parse response
      current_fiber.resume(r)
    end
  end 

  def request(url, method = 'get', params = nil) 
      current_fiber = Fiber.current
      http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
      http.errback do  |http|
         current_fiber.resume(http)
      end 
      http.callback do |http|
        current_fiber.resume(http)
      end
      http = Fiber.yield 
  end
end
