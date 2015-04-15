require 'socket'
hostname = 'localhost'
port = 2000

t1 = Time.now

1000.times do 
	s = TCPSocket.open(hostname, port)
	while line = s.gets
		# puts line.chop
	end
	s.close
end

puts Time.now - t1
