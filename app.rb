require './models/storage'

get '/' do
  @holidays = Storage.find({})

  erb :index
end
