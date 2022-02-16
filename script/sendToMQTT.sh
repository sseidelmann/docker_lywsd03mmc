#mosquitto_pub -h mqtt.host -t "MiTemperature2/$2/temp" -u mqtt.username -P mqtt.passwd -i "mibridge" -m "$3"
#mosquitto_pub -h mqtt.host -t "MiTemperature2/$2/humidity" -u mqtt.username -P mqtt.passwd -i "mibridge" -m "$4"
#mosquitto_pub -h mqtt.host -t "MiTemperature2/$2/batteryvoltage" -u mqtt.username -P mqtt.passwd -i "mibridge" -m "$5"
#mosquitto_pub -h mqtt.host -t "MiTemperature2/$2/batterylevel" -u mqtt.username -P mqtt.passwd -i "mibridge" -m "$6"