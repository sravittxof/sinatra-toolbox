ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, 'sqlite3:db/database.db'
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require 'securerandom'
require 'sysrandom/securerandom'
require './app/controllers/application_controller'
require './app/controllers/users_controller'
require './app/controllers/jobs_controller'
require './app/controllers/tools_controller'
require_all 'app'
