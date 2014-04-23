#! /bin/sh

echo $USER | sed -e "s/\b\(.\)/\u\1/g"

