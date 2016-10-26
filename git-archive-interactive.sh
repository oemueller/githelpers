#!/bin/bash
#get help: https://linuxconfig.org/bash-scripting-tutorial
#Export changed files since commit: hash
echo -e "Hi, please enter commit hash (export start): \c "
read  githash
mydate=$(date +%F-%T)
git archive -o ../$mydate.zip HEAD $(git diff --name-only $githash)
echo "git archive done -> ../$mydate.zip"
#end
