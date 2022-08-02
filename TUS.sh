
###URL check###

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] idiot Invalid URL. use http or https.\e[0m"
            exit 1
        fi
    fi
}

###banner###

echo -e "\e[1;31m                         ████████╗██╗   ██╗███████╗     \e[0m"
echo -e "\e[1;31m                         ╚══██╔══╝██║   ██║██╔════╝     \e[0m"
echo -e "\e[1;31m                            ██║   ██║   ██║███████╗     \e[0m"
echo -e "\e[1;31m                            ██║   ██║   ██║╚════██║     \e[0m"
echo -e "\e[1;31m                            ██║   ╚██████╔╝███████║     \e[0m"
echo -e "\e[1;31m                            ╚═╝    ╚═════╝ ╚══════╝     \e[0m"
echo -e "\e[1;31m                                                        \e[0m"
echo -e "\e[1;31m     _   _                   _      _            _            \e[0m"
echo -e "\e[1;31m    | |_| |_  ___   _  _ _ _| |  __| |_  ___ _ _| |_ ___ _ _  \e[0m"
echo -e "\e[1;31m    |  _| ' \/ -_) | || | '_| | (_-< ' \/ _ \ '_|  _/ -_) '_| \e[0m"
echo -e "\e[1;31m     \__|_||_\___|  \_,_|_| |_| /__/_||_\___/_|  \__\___|_|   \e[0m"
echo -e "\e[1;31m                                                              \e[0m"
echo -e "\e[1;31m                               v0.1                           \e[0m"
echo -e "\e[1;31m                   the url shorter MADE By NOEN               \e[0m"
echo -e "\e[1;31m                                                              \e[0m"
echo -e "\e[1;31m\e[0m"
echo -e "\e[1;31m\e[0m"
echo -n "Enter Phishing URL here (with http or https): 
>>>"
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL ^-^"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31m VvV Hiding Domain VvV\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, http://facebook.com :'
echo -en "\e[31m>>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating hidden Phish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the hidden Phish URL:\e[32m ${final} \e[0m\n"
