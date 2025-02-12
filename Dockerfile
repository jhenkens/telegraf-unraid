FROM telegraf:1.32-alpine
RUN apk update && apk add smartmontools lm-sensors nvme-cli ipmitool
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
