#!/usr/bin/python3
try:
    import libnmap.process
    import libnmap.parser
    import tableprint
    import numpy
except ModuleNotFoundError:
    print("Required modules not found. This program requires Python 3 and required dependicies installed. Run 'pip install python-libnmap tableprint numpy' to install dependicies and try again.")
    exit(1)

HOSTS_TO_SCAN = '192.168.1.0/24'

def hasHostname(hostnames):
    return len(hostnames) != 0


def removeDuplicatesFromList(array):
    b = list()
    [b.append(sublist) for sublist in array if sublist not in b]
    return b


hosts = []

print("Running standard ping scan...")
nm = libnmap.process.NmapProcess(HOSTS_TO_SCAN, options="-sn")
rc = nm.run()
nmap_report = libnmap.parser.NmapParser.parse(nm.stdout)

for host in nmap_report.hosts:
    if hasHostname(host.hostnames):
        hosts.append([host.address, host.hostnames[0]])

print("Running deeper ping scan to find hidden devices...")
nm = libnmap.process.NmapProcess(HOSTS_TO_SCAN, options="-sn -Pn")
rc = nm.run()
nmap_report = libnmap.parser.NmapParser.parse(nm.stdout)

for host in nmap_report.hosts:
    if hasHostname(host.hostnames):
        hosts.append([host.address, host.hostnames[0]])

hostsWithoutDuplicates = removeDuplicatesFromList(hosts)

tableprint.table(
    numpy.array(hostsWithoutDuplicates), [
        'IP Address', 'Hostname'], format_spec='5G', width=None, align='left')
