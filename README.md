# ipscan

I wanted a tool to quickly get all the IP's that were up and had hostnames to find my Raspberry Pi's on a network. I used `namp`, but while effective, I wanted something simpler. So I created `ipscan`. `ipscan` is a simple tool to scan something (e.g. `10.0.0.1/24`) for devices. By default, it scans `192.168.1.0/24`.

## Usage

### Recommended (with the Python script)

Run the commands below to download and setup. If you want to scan different hosts (default is `192.168.1.0/24`), change the `HOSTS_TO_SCAN` variable in `ipscan`. For a custom DNS server, change `DNS_SERVER` in `ipscan`. If `DNS_SERVER` is `None`, the default will be assumed.
```
$ git clone https://github.com/CoconutMacaroon/ipscan.git
Cloning into 'ipscan'...
remote: Enumerating objects: 46, done.
remote: Counting objects: 100% (46/46), done.
remote: Compressing objects: 100% (43/43), done.
remote: Total 46 (delta 13), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (46/46), 12.77 KiB | 502.00 KiB/s, done.
$ cd ipscan/
$ chmod +x ipscan
```
And to run the script...
```
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

| :warning: | This script is depricated and will be removed. Please use the Python script instead |
|-----------|:------------------------------------------------------------------------------------|

The one-liner to run it with no options is `curl -sL https://bit.ly/coconutmacaroon-ipscan | bash`. This doesn't support arguments to the script. For that, simply `curl -L https://bit.ly/coconutmacaroon-ipscan -o ipscan.sh`, add execute privledgee (`chmod +x ipscan.sh`), and run it (`./ipscan.sh [OPTIONS]`).
