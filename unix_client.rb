require 'socket'

socket_file_name = '/Users/noff/Developer/sockets/demo.socket'

client = UNIXSocket.new socket_file_name

while line = client.gets
	puts line.chop
end