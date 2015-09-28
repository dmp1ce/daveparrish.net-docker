#!/bin/bash

cd /home/hakyll/hakyll

# Rebuild site program
rm -f site && rm -f site.o && rm -f site.hi
ghc --make site.hs

# Rebuild project
mv _site/version.txt /tmp
./site clean
# Make '_site' writable by everyone
mkdir -p _site && chmod 777 _site
mv /tmp/version.txt _site
{{#DEVELOPMENT}}
./site watch --no-server
{{/DEVELOPMENT}}
{{#PRODUCTION}}
./site build
{{/PRODUCTION}}

# vim:syntax=sh
