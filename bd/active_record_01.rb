#require "rubygems"
require 'active_record'
require 'logger'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database  => "geografico.db"
)

class Estado < ActiveRecord::Base
    has_many :municipio
end

class Municipio < ActiveRecord::Base
    belongs_to :estado 
end

arr_estados=Estado.includes(:municipio).find(:all) #Active Record 3
arr_estados.each do |e|
    puts "Estado: #{e.nombre}"
    e.municipio.each{ |m| puts "\t#{m.nombre}" }
end

