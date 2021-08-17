# ipscan

I wanted a tool to quickly get all the IP's that were up and had hostnames to find my Raspberry Pi's on a network. I used `namp`, but while effective, I wanted something simpler. So I created `ipscan`. `ipscan` is a simple tool to scan something (e.g. `10.0.0.1/24`) for devices. By default, it scans `192.168.1.0/24`.

## Usage

> Note. This doesn't support arguments to the script. For that, simply `curl -L https://bit.ly/coconutmacaroon-ipscan -o ipscan.sh`, add execute privledgee (`chmod +x ipscan.sh`), and run it (`./ipscan.sh [OPTIONS]`).

The one-liner to run it with no options is `curl -sL https://bit.ly/coconutmacaroon-ipscan | bash`. 
