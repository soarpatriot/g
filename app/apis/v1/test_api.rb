require "em-http-request"
class V1::TestApi < Grape::API
  params do 

  end
  namespace :test do 
    desc "short" do 
    end
    get "short" do 
      current_fiber = Fiber.current
      result = nil
			EventMachine.run {
				http = EventMachine::HttpRequest.new('https://yun.dreamreality.cn/short', :connect_timeout => 120, :inactivity_timeout => 0).get

				http.errback { p 'Uh oh'; EM.stop }
				http.callback {
					# p http.response_header.status
					# p http.response_header
					# p http.response
          result = http.response 
          r = JSON.parse result
          current_fiber.resume r
				}
			}
      Fiber.yield 
    end
    get "normal" do 
      current_fiber = Fiber.current
      result = nil
			EventMachine.run {
				http = EventMachine::HttpRequest.new('https://yun.dreamreality.cn/normal', :connect_timeout => 120, :inactivity_timeout => 0).get

				http.errback { p 'Uh oh'; EM.stop }
				http.callback {
					# p http.response_header.status
					# p http.response_header
					# p http.response
          result = http.response 
          r = JSON.parse result
          current_fiber.resume r
				}
			}
      Fiber.yield 
 
    end
    get "medium" do 
      current_fiber = Fiber.current
      result = nil
			EventMachine.run {
				http = EventMachine::HttpRequest.new('https://yun.dreamreality.cn/test', :connect_timeout => 120, :inactivity_timeout => 0).get

				http.errback { p 'Uh oh'; EM.stop }
				http.callback {
					# p http.response_header.status
					# p http.response_header
					# p http.response
          result = http.response 
          r = JSON.parse result
          current_fiber.resume r
				}
			}
      Fiber.yield 
 
    end
    get "long" do 
      current_fiber = Fiber.current
      result = nil
			EventMachine.run {
				http = EventMachine::HttpRequest.new('https://yun.dreamreality.cn/medium', :connect_timeout => 120, :inactivity_timeout => 0).get

				http.errback { p 'Uh oh'; EM.stop }
				http.callback {
					# p http.response_header.status
					# p http.response_header
					# p http.response
          result = http.response 
          r = JSON.parse result
          current_fiber.resume r
				}
			}
      Fiber.yield 
 
    end
  end
end
