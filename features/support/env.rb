require 'sinatra'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require './app'

set :environment, :test
set :views, './views'

Capybara.app = Sinatra::Application
