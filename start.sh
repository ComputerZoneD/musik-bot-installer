wget http://file.server-space.online/news.txt
wget http://file.server-space.online/1029.txt
clear
chmod 777 news.txt
echo "Versions Check...."
sleep 3
cat Version.txt
sleep 3
echo "   "
cat < news.txt
sleep 5
clear
cat < 1029.txt
sleep 5
clear
echo "Sollte deine Version alt sein dann installiere den Bot per script auf meiner github seite neu LG Blacktiger"
sleep 1
rm -f 1029.txt news.txt
screen -dmS ts3bot ./sinusbot -RunningAsRootIsEvilAndIKnowThat
