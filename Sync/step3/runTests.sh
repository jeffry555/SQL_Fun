#!/bin/sh

./createSchema.sh


cd tests

for t in `ls -1 runTest${1}*`
do
	echo $t
	./$t
done


