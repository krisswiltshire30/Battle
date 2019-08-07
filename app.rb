require 'sinatra/base'
# homepage
class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_one_name])
    $player2 = Player.new(params[:player_two_name])
    # what the page does
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player1.name
    @player_two_name = $player2.name
    erb(:play)
  end

  get '/test' do
    'Testing123'
  end


  get '/attack' do
    @player_one_name = $player1.name
    @player_two_name = $player2.name
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
