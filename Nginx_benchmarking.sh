#!/bin/bash

mkdir -p $HOME/logs/nginx

URL=http://$1:8080/ubuntu.zip
declare -i THREAD=$2
declare -i DIFF=0

wget_func(){
  START=$(date +%s)

  wget "$1" -O /dev/null

  END=$(date +%s)  
  echo "Total time taken $(($END - $START)) seconds"
}

 
for i in `seq 1 $THREAD`
do
        wget_func "$URL" &
done
 
wait
echo "All threads are finished."
