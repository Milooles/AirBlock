echo "What is your decoy browser? Please style and capitalise correctly."
read decoy
echo "What is your decoy URl? Please style correctly, using the format 'https://www.example.com' "
read url
echo "beginning now"
sleep 5
 osascript -e 'display notification "AirPlay Connection Detected!!!" with title "AirKill Insight"'
sleep 1.5
osascript -e 'display notification "Please review connections in the terminal when safe" with title "AirKill Insight" '
sleep 1
osascript -e 'display notification "Redirecting you to your safe window..." with title "AirKill Insight" '
sleep 0.5
open -a "$decoy" "$url"
echo "AirPlay connection detected:"
