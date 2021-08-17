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
nmap -sn -Pn "${nmaphosts}" | grep --color=never -E '[^\n]+\([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}\)$'
