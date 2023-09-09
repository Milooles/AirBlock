#!/bin/bash
counter=0
echo "You are currently using AirBlock Pure v1.2c Canary."
sleep 0.7
echo ""
echo "Powered by AirKill Engine Internal v.4.0.1i"
sleep 2
echo "------------------------------------"
echo "////////////////////////////////////"
echo "////////////////////////////////////"
echo "////////////////////////////////////"
echo "////////////////////////////////////"
echo "////////////////////////////////////"
sleep 0.6
echo "------------------------------------"
sleep 0.5
echo "What is your desired decoy URL?"
read url

check_airplay_connections() {
    while true; do
        connections=$(netstat -an | grep -E '7000|554|3689|5353' | grep ESTABLISHED)

        if [ -n "$connections" ]; then 
            osascript -e 'display notification "Likely AirPlay Connection Detected!!!" with title "AirBlock Pure by Veritas"'
            sleep 1.5
            osascript -e 'display notification "Redirecting you to your safe window now..." with title "AirBlock Pure by Veritas" '
            sleep 0.5
            open -a "Microsoft Edge" "$url"
            echo "AirPlay connection detected:"
            echo "$connections"
        fi
        echo "------------------------------------"
        sleep 3
        echo "Scanning in Progress" 
        echo "Scan completed $counter times."
        ((counter++))
        
    done
}

check_airplay_connections
