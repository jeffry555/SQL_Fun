#!/bin/sh


cd tests

for t in `ls -1 runTest*`
do
	echo $t
	./$t
done


