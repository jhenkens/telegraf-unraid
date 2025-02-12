FROM telegraf:1.32-alpine
RUN apk update && apk add smartmontools nvme-cli ipmitool lm-sensors lm-sensors-detect perl sudo && mkdir -p /etc/sudoers.d
COPY ./smart_sudoers /etc/sudoers.d/smart_sudoers
RUN chown root:root /etc/sudoers.d/smart_sudoers && chmod 644 /etc/sudoers.d/smart_sudoers
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
