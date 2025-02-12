FROM telegraf:1.32-alpine
RUN apk update && apk add smartmontools nvme-cli ipmitool lm-sensors lm-sensors-detect perl
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
