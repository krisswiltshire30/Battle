require 'sinatra/base'
# homepage
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p session[:player_one_name] = params[:player_one_name]
    p session[:player_two_name] = params[:player_two_name]
    # what the page does
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    erb(:play)
  end

  get '/test' do
    'Testing123'
  end


  get '/attack' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    erb :attack
  end

    set :session_secret, "thing"
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
