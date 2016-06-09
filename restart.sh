function greenMessage {
    echo -e "\\033[32;1m${@}\033[0m"
}

function magentaMessage {
    echo -e "\\033[35;1m${@}\033[0m"
}

function cyanMessage {
    echo -e "\\033[36;1m${@}\033[0m"
}

function redMessage {
    echo -e "\\033[31;1m${@}\033[0m"
}

function yellowMessage {
	echo -e "\\033[33;1m${@}\033[0m"
}
redMessage "Stoppe den Musikbot"
screen -S ts3bot -X quit
sleep 5
greenMessage "Starte den Musikbot"
screen -dmS ts3bot ./sinusbot -RunningAsRootIsEvilAndIKnowThat
