require 'socket'

socket_file_name = './demo.socket'

t1 = Time.now

1000.times do 

	client = UNIXSocket.new socket_file_name

	while line = client.gets
		# puts line.chop
	end

end

puts Time.now - t1
