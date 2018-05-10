require "goliath"
require_relative "config/application"

#Goliath::Request.log_block = proc do |env, response, elapsed_time|
#  request_params = env.params.collect { |param| param.join(": ") }
#  method = env[Goliath::Request::REQUEST_METHOD]
#  path = env[Goliath::Request::REQUEST_URI]

  #env[Goliath::Request::RACK_LOGGER].info("[#{env['REMOTE_ADDR']}] #{request_params}") if request_params.length > 0
  #env[Goliath::Request::RACK_LOGGER].info("[#{env['REMOTE_ADDR']}] #{response.status} #{method} #{path} in #{'%.2f' % elapsed_time} ms \n")
#end


class Server < Goliath::API
  use Goliath::Rack::Params

  def response(env)
    
    ServiceApplication.call env
    #res[1]['Access-Control-Allow-Origin'] = "*"
    #res[1]['Access-Control-Allow-Credentials'] = "true"
    #res[1]['Access-Control-Expose-Headers'] = "X-Page, X-Per-Page, X-Prev-Page, X-Next-Page, X-Total, X-Total-Pages"

  end

end
