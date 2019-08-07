require 'sinatra/base'
# homepage
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    #what the page does
    erb(:play)
  end

  get '/test' do
    'Testing123'
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
 end
