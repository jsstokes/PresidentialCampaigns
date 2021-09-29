# CONN_STRING="mongodb+srv://basedemo.zwtlz.mongodb.net/myFirstDatabase?authSource=%24external&authMechanism=MONGODB-X509&retryWrites=true&w=majority"
if [ $# -lt 2 ]; then
	echo "Usage is: $0 <hostname> <username>"
	echo 
else
   mongo mongodb://$1/?authSource=admin --username $2 generate-profiledata-scenario1.js
fi
