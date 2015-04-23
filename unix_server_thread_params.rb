require 'socket'

socket_file_name = './demo.socket'
  File.unlink socket_file_name if File.exist? socket_file_name
  server = UNIXServer.new socket_file_name

loop do
  Thread.start(server.accept) do |client|
	  message = client.recvfrom(120)[0].upcase
	  client.puts "Hi, #{message}"
	  client.puts 'Closing the connection. Bye!'
	  client.close
	end
end
