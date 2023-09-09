#!/bin/bash
echo "What is your student number?"
echo ""
read number
valid="f35eb8e2e06eb8242ed4133d9f400318"
checksum=$(md5 -q "/Users/$number/Downloads/Activation.sh")

if [ "$checksum" == "$valid" ]; then 

    counter=0
    sleep 3
    echo ""
    echo "Thank You for using AirBlock Lite by Veritas."
    sleep 1.75
    echo "You are currently using AirBlock Lite v2.1s Stable."
    sleep 1.75
    echo "AirBlock Lite v2.1s, Brisbane AU, 5/9/23."
    sleep 1.75
    echo ""
    echo "Powered by AirKill Engine for Distribution v.4.0.1d"
    sleep 7
    echo ""
    echo "Please ensure your system has been validated with a licence key."
    sleep 1
    echo "If not, please enter one into Activation.sh"
    sleep 3
    echo ""
    echo "By using AirBlock Lite, you agree to your incoming and outgoing network connections being observed and documented temporarily."
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
    sleep 2
    echo "AirBlock Lite scans for hostile network patterns every 3 seconds."
    sleep 4
    echo "AirBlock Lite will utilise Apple Safari. Please ensure it is installed."
    sleep 3
    echo ""
    echo "Upon detecting hostile network behaviour, AirBock Lite will redirect you to:"
    sleep 1.25
    echo "King's Compass, https://compass.kingscollege.qld.edu.au."
    sleep 3
    echo ""
    echo "Please ensure you are logged into:"
    sleep 1.5 
    echo "King's Compass"
    sleep 4
    echo ""
    echo "On the installed app:"
    sleep 1
    echo "'Safari.'"
    sleep 2.5
    echo ""
    echo "Your student number is:"
    sleep 1.2
    echo "$number"
    sleep 1
    echo ""
    file="/Users/$number/Pictures/temporary.txt"
    echo "Please review the above details!!"
    sleep 7
    echo ""
    sleep 2
    if [ -e "$file" ]; then

        echo "nestat -an starting now..."
        rm /Users/$number/Pictures/Dump.txt
        rm /Users/$number/Pictures/AirKill.txt
        rm /Users/$number/Pictures/logs.txt
        rm /Users/$number/Pictures/split.txt
        rm /Users/$number/Pictures/safe.txt
        rm /Users/$number/Pictures/url.txt
        rm /Users/$number/Pictures/stellar.txt
        rm /Users/$number/Pictures/engine.txt
        rm /Users/$number/Pictures/aerous.txt
        rm /Users/$number/Pictures/tempoary.txt
        echo "Licence Status:"
        sleep 2.75
        echo "Validated."
        sleep 3
        echo ""
        echo "This program is now running in the background"
        sleep 0.75
        echo "You can minimise this Terminal window."
        sleep 1.5
        echo ...
        sleep 1.5
        check_airplay_connections() {
            while true; do
                connections=$(netstat -an | grep -E '7000|554|3689|5353' | grep ESTABLISHED)

                if [ -n "$connections" ]; then 
                    osascript -e 'display notification "Likely AirPlay Connection Detected!!!" with title "AirBlock Lite by Veritas"'
                    sleep 1.5
                    osascript -e 'display notification "Redirecting you to your safe window now..." with title "AirBlock Lite by Veritas" '
                    sleep 0.5
                    open -a "Safari" "https://compass.kingscollege.qld.edu.au"
                    echo "AirPlay connection detected:"
                    echo "$connections"
                fi
                echo "------------------------------------------"
                sleep 3
                echo "Background Scanning Continuing..." 
                echo "No suspicious network connections found."       
                
            done
        }

        check_airplay_connections
    else 
        sleep 3
        echo "That's an error. That's all we know."
        echo ""
        sleep 3
    fi
    #Seems like you're checking out the source code. If you use any of it, please reference AirBlock Lite by Veritas, Version v1.3s. If you use the 'Check_Airplay_Connections function', reference the AirKill Engine for Export by Veritas, Version v4.0.1d.
else 
    sleep 3
    echo ""
    echo "That's an error. That's all we know."
    echo ""
    sleep 3
fi