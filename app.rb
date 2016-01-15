require './models/storage'

get '/' do
  @holidays = storage.find

  erb :index
end

def storage
  Storage.new(params)
end
