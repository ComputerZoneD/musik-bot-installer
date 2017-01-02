rm 1029.txt >/dev/null
wget -q 'http://file.57c86e25072ca.noez.eu/1029.txt'
chmod 777 1029.txt
news=`cat 1029.txt`

if [ "$1" = "stop" ]; then
	echo -e "\033[34m=======================================================\033[0m"
        echo "                  Bot wird gestoppt"
        echo -e "\033[34m=======================================================\033[0m"
		echo -e "                                                                       "
		echo -e "\033[34m=======================================================\033[0m"
		echo "			Bot News"
		echo -e "\033[34m=======================================================\033[0m"
		echo -e "\033[34m$news\033[0m"
		echo -e "\033[34m=======================================================\033[0m"
	screen -S ts3bot -X quit
	fi
  
  if [ "$1" = "update" ]; then
	echo -e "\033[34m=======================================================\033[0m"
        echo "                  Bot Update"
        echo -e "\033[34m=======================================================\033[0m"
	screen -S ts3bot -X quit
	cd /opt/ts3soundboard/

	if [ -f /opt/ts3soundboard/update.sh ]
  then
    rm -fr /opt/ts3soundboard/update.sh
    cd cd /opt/ts3soundboard/
  wget --no-check-certificate https://raw.githubusercontent.com/Rooting21/Musikbot-Installer-for-Ubuntu-und-Debian/master/update.sh && chmod 777 update.sh && ./update.sh
chmod 777 /opt/ts3soundboard/update.sh
  else
  cd cd /opt/ts3soundboard/
  wget --no-check-certificate https://raw.githubusercontent.com/Rooting21/Musikbot-Installer-for-Ubuntu-und-Debian/master/update.sh && chmod 777 update.sh && ./update.sh
chmod 777 /opt/ts3soundboard/update.sh
fi
	fi
  
  	if [ "$1" = "start" ]; then
	if nc -w "100" -z "127.0.0.1" 8087; then
        echo -e "\033[34m=======================================================\033[0m"
	echo -e "									"
	echo -e "\033[31m Bot ist schon gestartet\033[0m !!!!!!!!!!!!!"
	echo -e "									"
        echo -e "\033[34m=======================================================\033[0m"
	else
        echo -e "\033[34m=======================================================\033[0m"
        echo "                  Bot wird gestartet"
        echo -e "\033[34m=======================================================\033[0m"
		echo -e "                                                                       "
		echo -e "\033[34m=======================================================\033[0m"
		echo "			Bot News"
		echo -e "\033[34m=======================================================\033[0m"
		echo -e "\033[34m$news\033[0m"
		echo -e "\033[34m=======================================================\033[0m"
	screen -dmS ts3bot ./sinusbot -RunningAsRootIsEvilAndIKnowThat
	fi
	fi
  
  	if [ "$1" = "help" ]; then
        echo -e "\033[34m=======================================================\033[0m"
        echo "                             Bot Commands                         "
        echo -e "\033[34m-------------------------------------------------------\033[0m"
        echo -e "                                                                       "
        echo -e "\033[31m ./start.sh start\033[0m Um den Bot zu Starten"
        echo -e "                                                                       "
        echo -e "\033[31m ./start.sh stop\033[0m Um den Bot zu Stoppen"
        echo -e "                                                                       "
	        echo -e "\033[31m ./start.sh update\033[0m Bot Update starten"
		        echo -e "                                                                       "
	      echo -e "\033[31m ./start.sh help\033[0m Um alle Commands anzuzeigen"
        echo -e "                                                                       "
        echo -e "\033[34m=======================================================\033[0m"
		echo -e "                                                                       "
		echo -e "\033[34m=======================================================\033[0m"
		echo "			Bot News"
		echo -e "\033[34m=======================================================\033[0m"
		echo -e "\033[34m$news\033[0m"
		echo -e "\033[34m=======================================================\033[0m"
        fi
	
	
	
	if [ "$1" = "" ]; then
        echo -e "\033[34m=======================================================\033[0m"
        echo "                             Bot Commands                         "
        echo -e "\033[34m-------------------------------------------------------\033[0m"
        echo -e "                                                                       "
        echo -e "\033[31m ./start.sh start\033[0m Um den Bot zu Starten"
        echo -e "                                                                       "
        echo -e "\033[31m ./start.sh stop\033[0m Um den Bot zu Stoppen"
		        echo -e "\033[31m ./start.sh update\033[0m Bot Update starten"
		        echo -e "                                                                       "
        echo -e "                                                                       "
	      echo -e "\033[31m ./start.sh help\033[0m Um alle Commands anzuzeigen"
        echo -e "                                                                       "
        echo -e "\033[34m=======================================================\033[0m"
		echo -e "                                                                       "
		echo -e "\033[34m=======================================================\033[0m"
		echo "			Bot News"
		echo -e "\033[34m=======================================================\033[0m"
		echo -e "\033[34m$news\033[0m"
		echo -e "\033[34m=======================================================\033[0m"
        fi
