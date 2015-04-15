require 'socket'

socket_file_name = './demo.socket'

client = UNIXSocket.new socket_file_name

while line = client.gets
	puts line.chop
end