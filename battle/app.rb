require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'secret'

  get '/' do
    erb :index
  end

  post '/named-players' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb :players
  end

  get '/attack' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb :attack
  end


  run! if app_file == $0
end
