#!/usr/bin/ruby
=begin
  Script que lista los usuarios del sistema
  William Yanez -Dic 2008
=end

begin
	fpass=File.new("/etc/passwd","r")
	fpass.each{ |linea|
		data=linea.chomp.split ":"
		printf "%s\n",data[0] if data[2].to_i>500 && data[0]!="nobody"
	}
	fpass.close
rescue IOError
	fpass.close if !fpass.nil?
	puts "Ocurrio un error al abrir el archivo /etc/passwd"
end

