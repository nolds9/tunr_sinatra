require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection.rb'

# Load models
require_relative 'models/artist'
require_relative 'models/song'

# Load controllers
require_relative 'controllers/artists'
require_relative 'controllers/songs'

####################
#  General routes  #
####################

# root route
  get "/" do
    erb :home
  end
