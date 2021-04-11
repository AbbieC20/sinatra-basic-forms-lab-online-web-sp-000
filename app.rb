require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy_name = params[:user_phrase]
    @puppy_breed = params[:user_phrase]
    @puppy_age = params[:user_phrase]
    @puppy = Puppy.new(@puppy_name, @puppy_breed, @puppy_age)
    erb :display_puppy
  end

end
