require 'sinatra/base'

$:<< File.dirname(__FILE__)

unless defined?(HOLIDAYS_ROOT)
  HOLIDAYS_ROOT = File.join(File.dirname(__FILE__), '..')
end

require 'holidays/storage'

module Holidays
  class Application < Sinatra::Base
    set :views, File.join(File.dirname(__FILE__), 'holidays', 'views')

    get '/' do
      @holidays = Storage.find({})

      erb :index
    end
  end
end
