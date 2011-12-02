require 'sqlite3'

db=SQLite3::Database.new("bdprueba.db")
db.results_as_hash=true

puts "USUARIOS:"
db.execute("SELECT * FROM usuarios") do |reg|
  puts "#{reg['login']}: #{reg['username'] } - #{reg['email']}"
end
db.close
