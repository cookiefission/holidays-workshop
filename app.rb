require './models/holiday'

get '/' do
  @holidays = Holiday.find(params)

  erb :index
end
