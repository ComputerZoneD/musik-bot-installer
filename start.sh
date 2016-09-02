wget http://file.server-space.online/news.txt >/dev/null 2>&1
wget http://file.server-space.online/1029.txt >/dev/null 2>&1
chmod 777 news.txt
echo "Versions Check...."
sleep 3
grep palita < Version.txt
sleep 3
grep palita < news.txt
sleep 5
grep palita < 1029.txt
sleep 5
clear
echo "Sollte deine Version alt sein dann installiere den Bot per script auf meiner github seite neu LG Blacktiger"
sleep 1
rm -f 1029.txt news.txt 
screen -dmS ts3bot ./sinusbot -RunningAsRootIsEvilAndIKnowThat
