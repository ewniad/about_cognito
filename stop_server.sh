#!sh

id=$(ps|grep node|sed 's/\s\s*/,/g'|cut -f2 -d,)

kill $id


