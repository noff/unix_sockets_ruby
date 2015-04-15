require 'socket'

socket_file_name = './demo.socket'

File.unlink socket_file_name
server = UNIXServer.new socket_file_name

loop do
	client = server.accept
	client.puts Time.now.ctime
	sleep 5
	client.puts "Closing the connection. Bye!"
	client.close
end

