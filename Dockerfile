FROM alpine
RUN apk add nmap git bash
RUN git clone --depth 1 https://github.com/CoconutMacaroon/ipscan.git
WORKDIR /ipscan
RUN chmod +x ipscan.sh
ENTRYPOINT ["bash", "ipscan.sh"]
