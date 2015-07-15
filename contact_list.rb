require 'active_record'
# require 'pry'
require_relative "contact"

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'contacts3',
  username: 'development',
  password: 'development',
  host: 'localhost',
  port: 5432,
  pool: 5,
  encoding: 'unicode',
  min_messages: 'error'
)



