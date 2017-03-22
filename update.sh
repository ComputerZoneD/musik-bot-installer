#!/bin/bash
cd /opt/ts3soundboard/
curl -O https://www.sinusbot.com/dl/sinusbot-beta.tar.bz2
tar -xjvf sinusbot-beta.tar.bz2
cd /opt/ts3soundboard/
cp plugin/libsoundbot_plugin.so /opt/sinusbot/TeamSpeak3-Client-linux_amd64/plugins

