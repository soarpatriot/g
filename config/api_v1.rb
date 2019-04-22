require "grape-swagger"
class ApiV1 < Grape::API

#  use Rack::Cors do
#    allow do
#      origins '*'
#      resource '*', headers: :any, methods: [:get, :put, :post, :options, :delete]
#    end
#  end
#
#  format :json
  version :v1

  get do
    {
        name: "v1"
    }
  end

  #helpers AccessHelper
  #helpers ApplicationHelper

  mount V1::AuthApi
  mount V1::TestApi

  # add_swagger_documentation  api_version:"v1", base_path: Settings.host
  # add_swagger_documentation api_version: "v2", markdown: true
end
