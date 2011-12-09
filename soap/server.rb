require 'soap/rpc/standaloneServer'
require 'interest_calc'

NS = 'http://pragprog.com/InterestCalc'

class ServerSoap < SOAP::RPC::StandaloneServer
    def on_init
        calc=InterestCalculator.new
        add_method(calc,'compound','principal','rate','freq','years')
        add_method(calc,'call_count')    
    end    
end

srv=ServerSoap.new('Calc',NS,'0.0.0.0',12321)
trap('INT') {srv.shutdown}
puts "Iniciando Servicio SOAP"
srv.start

