FROM pseudorandomico/mosquitto_openssl:latest
LABEL maintainer="Francesco Tonini <francesco@tonini.dev>" \
    description="Eclipse Mosquitto MQTT Broker with TLS1.3 support"

VOLUME ["/mosquitto/data", "/mosquitto/log"]

EXPOSE 1883
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
