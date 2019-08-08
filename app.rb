require 'sinatra/base'
# require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  # register Sinatra::Reloader

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_one_name])
    player2 = Player.new(params[:player_two_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  get '/play' do
    @game = $game
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
  set :session_secret, 'here be dragons'
end
