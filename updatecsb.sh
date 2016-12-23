#!/bin/sh
path=`find / -name "DClou*CSB"|grep webapps`
\cp -rf $path $path/../../bak/DCloudCSB/
echo $path
\cp -rf ./DClou*CSB.war $path/../
pkill -9 'java'
$path/../../bin/startup.sh