FROM jitsi/web

COPY iorestoacasa-config/config.js /config/config.js
COPY iorestoacasa-config/interface_config.js /config/interface_config.js
COPY iorestoacasa-config/watermark.png /usr/share/jitsi-meet/images/watermark.png
