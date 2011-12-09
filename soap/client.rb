require 'soap/rpc/driver'

NS = 'http://pragprog.com/InterestCalc'

proxy=SOAP::RPC::Driver.new("http://localhost:12321",NS)
proxy.add_method('compound','principal','rate','freq','years')
proxy.add_method('call_count')  

puts "Call count: #{proxy.call_count}"

result=proxy.compound(100,0.06,1,5)
puts "5 years, compound annually : #{result}"

result=proxy.compound(100,0.06,12,5)
puts "5 years, compound monthly : #{result}"

puts "Call count: #{proxy.call_count}"

