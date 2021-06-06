FROM mcr.microsoft.com/azure-cli
COPY open.sh /open.sh
COPY close.sh /close.sh
ENTRYPOINT ["open.sh"]
