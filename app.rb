require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        x = PigLatinizer.new
        x.piglatinize(params["user_phrase"])
    end

end