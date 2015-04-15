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