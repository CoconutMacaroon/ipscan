#!/bin/bash
optstring="h:"
nmaphosts='192.168.1.0/24'
# NAME
#     ipscan
#
# SYNOPSIS
#     ipscan [OPTION]
#
# DESCRIPTION
#     Scan a network for IP addresses that have hostnames
#
#     -h hosts - The hosts to scan - Defaults to 192.168.1.0/24

while getopts ${optstring} arg; do
    case ${arg} in
        h)
            nmaphosts="${OPTARG}"
    esac
done

# first do a normal scan (no port scan)
results=$(nmap -sn "${nmaphosts}")

# then for any hidden devices, do it again a different way to find them
results+=$(nmap -sn -Pn "${nmaphosts}")

# sort and remove duplicate results, and remove ones that don't have a hostname
echo "$results" | sort -fu ipscan.tmp | grep --color=never -E '[^\n]+\([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}\)$'
