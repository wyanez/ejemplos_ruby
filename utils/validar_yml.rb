=begin
Script para validar un archivo .yml

Ejemplo de uso:
ruby validar_yml.rb mi_archivo.yml

William Yanez - Nov 2010
=end

require 'yaml'

if ARGV.length.zero?
    puts "Sintaxis: #{$0} archivo.yml"
    exit
end

begin
	yml = YAML::load( File.open(ARGV[0]) )
	puts "Archivo #{ARGV[0]} validado correctamente!"
    puts yml.inspect 
rescue Exception => ex
	puts ex
end
