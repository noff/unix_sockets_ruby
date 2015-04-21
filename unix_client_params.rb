require 'socket'

if ARGV.length > 0
  socket_file_name = './demo.socket'
  client = UNIXSocket.new socket_file_name
  client.send ARGV.shift, 0
  puts client.read
else
  puts 'Syntax: ruby unix_client_params.rb %username%'
end

