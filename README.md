# ipscan

I wanted a tool to quickly get all the IP's that were up and had hostnames to find my Raspberry Pi's on a network. I used `namp`, but while effective, I wanted something simpler. So I created `ipscan`. `ipscan` is a simple tool to scan something (e.g. `10.0.0.1/24`) for devices. By default, it scans `192.168.1.0/24`.

## Usage

### Recommended (with the Python script)

Clone the repo (```git clone https://github.com/CoconutMacaroon/ipscan.git```), and run the commands below. If you want to scan different hosts (default is `192.168.1.0/24`, change the `HOSTS_TO_SCAN` variable in `ipscan`.
```
$ chmod +x ipscan
$ ./ipscan
Running standard ping scan...
Running deeper ping scan to find hidden devices...
╭───────────────────────┬───────────────────────╮
│ IP Address            │ Hostname              │
├───────────────────────┼───────────────────────┤
│ 192.168.1.X           │ [redacted]            │
│ 192.168.1.X           │ [redacted]            │
│ 192.168.1.XX          │ [redacted]            │
│ 192.168.1.XX          │ [redacted]            │
│ 192.168.1.XX          │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]-iPhone     │
│ 192.168.1.XXX         │ DESKTOP-[redacted]    │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
│ 192.168.1.XXX         │ [redacted]            │
╰───────────────────────┴───────────────────────╯
```

### Old way (with the Bash script)

> Note. This doesn't support arguments to the script. For that, simply `curl -L https://bit.ly/coconutmacaroon-ipscan -o ipscan.sh`, add execute privledgee (`chmod +x ipscan.sh`), and run it (`./ipscan.sh [OPTIONS]`).

The one-liner to run it with no options is `curl -sL https://bit.ly/coconutmacaroon-ipscan | bash`. 
