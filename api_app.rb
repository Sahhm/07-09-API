require "pry"
require "sinatra"
require "sinatra/reloader"
require "sinatra/json"
set :bind, '0.0.0.0'

# SQL/Database
require "sqlite3"
require_relative "database_setup.rb"

# Models
require_relative "models/articlesorvideo.rb"
require_relative "models/assignment.rb"
require_relative "models/groupmember.rb"

# Controllers

require_relative "controllers/api_controller.rb"
require_relative "controllers/main.rb"

