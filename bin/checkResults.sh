#!/bin/sh

# diff output and check if test passed

echo Checking output
diff results/expected${1}.out results/test${1}.out
dval=$?
if [ $dval -eq 0 ]
then
   echo "\n*** Test Passed \n"
elif [ $dval -eq 1 ]
then
   echo "\n*** Test Failed \n"
else
   echo "\n*** Error \n"
fi



