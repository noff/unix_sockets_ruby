<?php

$socket_file_name = 'unix://' . dirname(__FILE__) . '/demo.socket';
$fp = fsockopen($socket_file_name, 0, $errno, $errstr, 30);

if(!$fp) {
	 echo "$errstr ($errno)<br />\n";
} else {
    // $out = "GET / HTTP/1.1\r\n";
    // $out .= "Host: www.example.com\r\n";
    // $out .= "Connection: Close\r\n\r\n";
    // fwrite($fp, $out);
    while (!feof($fp)) {
        echo fgets($fp, 128);
    }
    fclose($fp);
}