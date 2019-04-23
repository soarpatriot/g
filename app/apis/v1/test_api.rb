require "em-http-request"
class V1::TestApi < Grape::API
  params do 

  end
  namespace :test do 
    desc "short" do 
    end
    get "short" do 
      url = 'https://yun.dreamreality.cn/short'
      current_fiber = Fiber.current
      http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
      http.errback do  |http|
         current_fiber.resume(http)
      end 
      http.callback do |http|
        current_fiber.resume(http)
      end
      http = Fiber.yield 
    
      # http  = request(url)
      JSON.parse http.response
    end
    get "normal" do 
      url = 'https://yun.dreamreality.cn/normal'
      current_fiber = Fiber.current
      http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
      http.errback do  |http|
         current_fiber.resume(http)
      end 
      http.callback do |http|
        current_fiber.resume(http)
      end
      http = Fiber.yield 
    
      # http  = request(url)
      JSON.parse http.response
 
    end
    get "medium" do 
      url = 'https://yun.dreamreality.cn/test'
      current_fiber = Fiber.current
      http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
      http.errback do  |http|
         current_fiber.resume(http)
      end 
      http.callback do |http|
        current_fiber.resume(http)
      end
      http = Fiber.yield 
    
      # http  = request(url)
      JSON.parse http.response
 
    end
    get "long" do 
      url = 'https://yun.dreamreality.cn/medium'
      current_fiber = Fiber.current
      http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
      http.errback do  |http|
         current_fiber.resume(http)
      end 
      http.callback do |http|
        current_fiber.resume(http)
      end
      http = Fiber.yield 
    
      # http  = request(url)
      JSON.parse http.response
 
#      current_fiber = Fiber.current
#      result = nil
#			EventMachine.run {
#				http = EventMachine::HttpRequest.new('https://yun.dreamreality.cn/medium', :connect_timeout => 120, :inactivity_timeout => 0).get
#
#				http.errback { p 'Uh oh'; EM.stop }
#				http.callback {
#					# p http.response_header.status
#					# p http.response_header
#					# p http.response
#          result = http.response 
#          r = JSON.parse result
#          current_fiber.resume r
#				}
#			}
#      Fiber.yield 
 
    end

    def re(url)
      current_fiber = Fiber.current
      http = EventMachine::HttpRequest.new(url, :connect_timeout => 120, :inactivity_timeout => 0).get
      http.errback do  |http|
         current_fiber.resume(http)
      end 
      http.callback do |http|
        current_fiber.resume(http)
      end
      http = Fiber.yield 
    
      # http  = request(url)
      JSON.parse http.response
    end
  end
end
