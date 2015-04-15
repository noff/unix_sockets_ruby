require 'socket'

socket_file_name = './demo.socket'

File.unlink socket_file_name
server = UNIXServer.new socket_file_name

loop do
	Thread.start(server.accept) do |client|
		client.puts Time.now.ctime
		client.puts "Closing the connection. Bye!"
		client.close
	end
end