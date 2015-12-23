require 'rack/test'
require 'holidays'

RSpec.describe 'Holidays App' do
  include Rack::Test::Methods

  def app
    Holidays::Application
  end

  it 'responds successfully' do
    get '/'

    expect(last_response).to be_ok
  end
end
