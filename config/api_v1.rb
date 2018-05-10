require "grape-swagger"
class ApiV1 < Grape::API

  use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :put, :post, :options, :delete]
    end
  end

  version :v1
  format :json

  before do
    I18n.locale = "zh-CN"
  end

  get do
    {
        name: "v1"
    }
  end

  helpers AccessHelper
  helpers ApplicationHelper
  helpers NotifyHelper

  mount V1::StationsApi
  mount V1::CommissionsApi
  mount V1::AreasApi
  mount V1::ProvincesApi
  mount V1::OrdersApi
  mount V1::CitiesApi

  # add_swagger_documentation  api_version:"v1", base_path: Settings.host
  # add_swagger_documentation api_version: "v2", markdown: true
end
