FROM alpine
RUN apk add nmap git
RUN git clone --depth 1 https://github.com/CoconutMacaroon/ipscan.git
WORKDIR /ipscan
RUN chmod +x ipscan.sh
ENTRYPOINT ["ipscan.sh"]
