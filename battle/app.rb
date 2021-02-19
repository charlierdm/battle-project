require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'secret'

  get '/' do
    erb :index
  end

  post '/named-players' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :players
  end

  run! if app_file == $0
end
