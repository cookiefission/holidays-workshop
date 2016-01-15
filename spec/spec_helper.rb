require 'sinatra'
require 'rack/test'
require './app'
require './models/storage'

set :environment, :test
set :views, './views'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
