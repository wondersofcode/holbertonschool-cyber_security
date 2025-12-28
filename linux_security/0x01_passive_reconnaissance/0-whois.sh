#!/bin/bash
whois "$1" | grep -Ei "^(Registrant|Admin|Tech)" | sed 's/:/,/' > "${1}.csv"
