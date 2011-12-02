# gem install sqlite3-ruby

require 'sqlite3'

db=SQLite3::Database.new('bdprueba.db');

db.execute("SELECT sqlite_version()") do |reg|
  puts "SQLite version: #{reg[0]}"
end
db.close
