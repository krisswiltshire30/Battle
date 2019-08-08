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
    $player1 = Player.new(params[:player_one_name])
    $player2 = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player1
    @player_2 = $player2
    Game.new.attack(@player_2)
    erb :attack
  end

  get '/play' do
    @player_1 = $player1
    @player_2 = $player2
    @player_one_name = $player1.name
    @player_two_name = $player2.name
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
  set :session_secret, "here be dragons"
end
