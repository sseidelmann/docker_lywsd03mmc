#!/bin/bash +e

#create hci0 device
hciconfig hci0 up

python3 /LYWSD03MMC/script/LYWSD03MMC.py --devicelistfile "/LYWSD03MMC/config/sensors.ini" --mqttconfigfile "/LYWSD03MMC/config/mqtt.conf" --atc