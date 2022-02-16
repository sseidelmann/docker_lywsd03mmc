FROM python:3.9

ENV LANG C.UTF-8


RUN apt-get update
RUN apt-get -y --no-install-recommends install libglib2.0-dev bluetooth libbluetooth-dev libcap2-bin

RUN pip3 install bluepy requests paho-mqtt pybluez pycryptodomex

RUN setcap cap_net_raw,cap_net_admin+eip $(eval readlink -f `which python3`)

RUN mkdir -p /LYWSD03MMC/config && \
  mkdir -p /LYWSD03MMC/script

COPY "./init.d/*" /etc/init.d/
COPY "./config/*" /LYWSD03MMC/config/
COPY "./script/*" /LYWSD03MMC/script/


VOLUME ["/LYWSD03MMC/config"]

ENTRYPOINT service dbus start

#SSH port
# EXPOSE 22

#do startscript
ENTRYPOINT ["/etc/init.d/entrypoint.sh"]

# ENTRYPOINT python3 /LYWSD03MMC/script/LYWSD03MMC.py --devicelistfile "/LYWSD03MMC/config/sensors.ini" --mqttconfigfile "/LYWSD03MMC/config/mqtt.conf" --onlydevicelist --atc