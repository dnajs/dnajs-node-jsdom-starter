#!/bin/sh
############################
# dnajs-node-jsdom-starter #
############################

# To make this file runnable:
#    $ chmod +x *.sh.command

info() {
   # Check for Node.js installation and download project dependencies
   pwd
   echo
   echo "Node.js:"
   which node || { echo "Need to install Node.js: https://nodejs.org"; exit; }
   node --version
   npm install
   npm update
   npm outdated
   echo
   }

echo
echo "dnajs-node-jsdom-starter"
echo "========================"
cd $(dirname $0)
info
npm test
echo "-----"
node app.js
echo "-----"
echo
