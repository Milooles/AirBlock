#!/bin/bash
echo "What is your student number?"
echo ""
read number
valid="f35eb8e2e06eb8242ed4133d9f400318"
checksum=$(md5 -q "/Users/$number/Downloads/Activation.sh")

if [ "$checksum" == "$valid" ]; then

    counter=0
    sleep 2
    echo ""
    echo "Thank You for using AirBlock by Veritas."
    sleep 1.75  
    echo "You are currently using AirBlock v3.1s Stable."
    sleep 1.75
    echo "AirBlock v2.4s, Brisbane AU, 5/9/23."
    sleep 3
    echo ""
    echo "Powered by AirKill Engine for Distribution v.4.0.1d"
    sleep 7
    echo ""
    echo "Please ensure that your system has been validated with a licence key."
    sleep 1
    echo "If not, please enter one into Activation.sh."
    sleep 3
    echo "By using AirBlock, you agree to you network connections being observed."
    sleep 3
    echo ""
    echo "Your data is never sent outside of your PC or maintained on external storage."
    echo ""
    sleep 1.75
    echo "------------------------------------"
    echo "////////////////////////////////////"
    echo "////////////////////////////////////"
    echo "////////////////////////////////////"
    echo "////////////////////////////////////"
    echo "////////////////////////////////////"
    sleep 0.6
    echo "------------------------------------"
    echo ""
    sleep 0.6
    echo "What interval do you want between AirBlock scans? AirBlock recommends '3'."
    read scan
    sleep 2
    echo ""
    echo "What is your decoy browser? Please style and capitalise correctly. For example, 'Google Chrome'. "
    read decoy
    echo ""
    echo "What is your decoy URL? Please style correctly, using the format 'https://www.example.com' "
    read url
    echo ""
    sleep 2
    echo "AirBlock scans for hostile network patterns every $scan seconds."
    sleep 2
    echo ""
    echo "Upon detecting hostile patterns, AirBlock will redirect you to:"
    sleep 1.5
    echo "$url"
    sleep 0.75
    echo ""
    echo "Using the installed app:"
    sleep 1.5
    echo "'$decoy'"
    sleep 2
    echo ""
    echo "Your student number is:"
    sleep 1.2
    echo "$number"
    sleep 2
    echo ""
    file="/Users/$number/Pictures/temporary.txt"
    echo "Please review the above details!!"
    sleep 7
    echo "nestat -an starting now..."
    sleep 2
    if [ -e "$file" ]; then
        echo ""
        echo "This program is now running in the background"
        sleep 0.75
        echo "You can minimise this Terminal window."
        sleep 1.5
        echo ...
        sleep 1.5
        rm /Users/$number/Pictures/Dump.txt
        rm /Users/$number/Pictures/tempoary.txt
        rm /Users/$number/Pictures/AirKill.txt
        rm /Users/$number/Pictures/logs.txt
        rm /Users/$number/Pictures/split.txt
        rm /Users/$number/Pictures/safe.txt
        rm /Users/$number/Pictures/url.txt
        rm /Users/$number/Pictures/stellar.txt
        rm /Users/$number/Pictures/engine.txt
        rm /Users/$number/Pictures/aerous.txt
        echo "Licence Status:"
        sleep 2.75
        echo "Validated."
        sleep 3
        check_airplay_connections() {
            while true; do
                connections=$(netstat -an | grep -E '7000|554|3689|5353' | grep ESTABLISHED)

                if [ -n "$connections" ]; then
                    
                    osascript -e 'display notification "Likely AirPlay Connection Detected!!!" with title "AirBlock by Veritas"'
                    sleep 1.5
                    osascript -e 'display notification "Please review suspicioius connections in your terminal when safe." with title "AirBlock by Veritas" '
                    sleep 1
                    osascript -e 'display notification "Redirecting you to your safe window..." with title "AirBlock by Veritas" '
                    sleep 0.5
                    open -a "$decoy" "$url"
                    echo "AirPlay connection detected:"
                    echo "$connections"
                fi
                echo "------------------------------------------"
                echo "No likely AirPlay connections yet detected"
                ((counter++))
                sleep $scan
                echo "Background Scanning Continuing..."
                
                echo "Scan Completed $counter times"
                
                
            done
        }

        check_airplay_connections
    else 
        sleep 3
        echo ""
        echo "That's an error. That's all we know."
        echo ""
        sleep 3
    fi

else 
    sleep 3
    echo ""
    echo "That's an error. That's all we know."
    echo ""
    sleep 3
fi
#Seems like you're checking out the source code. If you use any of it, please reference AirBlock by Veritas, Version v2.4s. If you use the 'Check_Airplay_Connections function', reference the AirKill Engine for Export by Veritas, Version v4.0.1d.
#Also pls don't pirate my code.