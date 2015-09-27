#!/bin/bash

cd /home/hakyll/hakyll
ghc --make site.hs
{{#DEVELOPMENT}}
./site watch --no-server
{{/DEVELOPMENT}}
