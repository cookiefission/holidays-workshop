describe 'App' do
  def app
    Sinatra::Application
  end

  it 'responds successfully' do
    get '/'

    expect(last_response).to be_ok
  end
end
