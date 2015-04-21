require 'socket'

socket_file_name = './demo.socket'

loop do
  File.unlink socket_file_name if File.exist? socket_file_name
  server = UNIXServer.new socket_file_name
  client = server.accept
  message = client.recvfrom(65536)[0].upcase
  client.puts "Hi, #{message}"
  client.puts 'Closing the connection. Bye!'
  client.close
end
