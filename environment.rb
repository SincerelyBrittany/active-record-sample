require 'active_record'
require 'sqlite3'
require 'pry'
require 'logger'

require_relative './models/user'
require_relative './models/post'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'activerecord-intro.db'
)

ActiveRecord::Base.logger = Logger.new($stdout)