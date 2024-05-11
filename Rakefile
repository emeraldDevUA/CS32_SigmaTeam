require 'open-uri'
require 'nokogiri'
require 'sqlite3'
require 'active_record'


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'business_models.db'
)


class BusinessModel < ActiveRecord::Base
end


Dir['db/migrate/*.rb'].each { |file| require_relative file }

namespace :db do
  desc 'Migrate the database'
  task :migrate do
    ActiveRecord::MigrationContext.new('db/migrate').migrate
  end

  desc 'Rolls the schema back to the previous version'
  task :rollback do
    ActiveRecord::MigrationContext.new('db/migrate').rollback
  end
end

namespace :parse do
  desc 'Parse links from Wikipedia category and save business models to database'
  task :wikipedia_category do

    puts 'Parsing and saving completed!'
  end
end
