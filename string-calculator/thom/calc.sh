#!/bin/sh
curl "api.wolframalpha.com/v2/query?appid=A7WTLW-2XVV8Y5T7W&input=$1"|awk -F'[<>]' '$2=="plaintext"&&!--N{print$3;exit}' N=2