#!/bin/bash
ps aux -u "â$1â" u --no-headers | grep -v â'  0[[:space:]]\+0 â'
