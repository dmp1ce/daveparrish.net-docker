#!/bin/bash

cd /home/hakyll/hakyll

# Rebuild site program
rm -f site && rm -f site.o && rm -f site.hi
ghc --make site.hs

# Rebuild project
./site clean
{{#DEVELOPMENT}}
./site watch --no-server
{{/DEVELOPMENT}}
{{#PRODUCTION}}
./site build
{{/PRODUCTION}}
