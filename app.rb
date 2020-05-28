require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    phrase = params["user_phrase"]
    pl = PigLatinizer.new
    @pl_phrase = pl.piglatinize(phrase)
    
    return @pl_phrase
  end
end