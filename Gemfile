# source "http://gems.rubyforge.org"

# gem "i18n"
gem "rest-client"
gem 'httparty'
gem 'grape'
gem 'grape-entity'
# gem 'grape-kaminari'
gem 'grape-swagger'
gem 'async-rack', '~> 0.5.1'
gem 'rack-cors'
# gem 'doorkeeper', '~> 4.3.2'
# gem 'mysql2'


#gem 'gretel'

gem 'god'

gem 'pry'

# gem 'activerecord', '5.2.0'
gem 'bcrypt'

group :production do
  gem 'goliath'
  gem 'em-synchrony'
  gem 'em-http-request'
end


group :development do
  gem 'guard-rspec'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
end

group :test do
  gem 'factory_girl'
  gem 'rspec'
  gem 'ci_reporter'
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  gem 'database_cleaner'

  gem 'webmock'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rack-test', require: 'rack/test'
end
