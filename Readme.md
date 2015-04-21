PIPE
======

Nameless pipe:

```
ls -la | grep client
```

Named pipe:

```
mkfifo pipe
echo 'hello, world' > pipe
cat pipe
```

TCPSocket
======

```
$ ruby server.rb
$ ruby client.rb
```

TCPSocket with threads
======

```
$ ruby server_thread.rb
$ ruby client.rb
```

UNIXSocket
======

```
$ ruby unix_server.rb
$ ruby unix_client.rb
```

UNIXSocket with threads
======

```
$ ruby unix_server_thread.rb
$ ruby unix_client.rb
$ php unix_client.php
```

TCPSocket speed (1000 requests)
======

```
$ ruby speed_server_thread.rb
$ ruby speed_client.rb
-> 7.5s
```

UNIXSocket speed (1000 requests)
======

```
$ ruby speed_unix_server_thread.rb
$ ruby speed_unix_client.rb
-> 0.16s
```

UNIXSocket Request + Response
======

```
$ ruby unix_server_thread_params.rb
$ ruby unix_client_params.rb noff
```