require 'sinatra'

# Base class for ConfigShare Web Application
class TriphoboApp < Sinatra::Base
  # enable :logging

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.dirname(__FILE__) + '/../public'

  get '/' do
    slim :home
  end
end
