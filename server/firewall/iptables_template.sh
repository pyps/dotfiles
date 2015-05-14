#!/bin/bash

#############
### Var's ###
#############

IPT=/sbin/iptables


function fw_start{
    # Default Rules:
    $IPT -P INPUT DROP
    $IPT -P OUTPUT ACCEPT
    $IPT -P FORWARD DROP

    # Accept Loopback:
    $IPT -A INPUT -i lo ACCEPT

    # ACCEPT related conections:
    $IPT -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
    $IPT -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
    $IPT -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT


    # ICMP: limited
    $IPT -A INPUT -p icmp -m limit --limit 60/s --limit-burst 200 -j ACCEPT
    $IPT -A INPUT -p icmp -j DROP

    # SSH: limited
    $IPT -A INPUT -p tcp --dport 22 -m recent --update --seconds 60 --hitcount 8 --name SSH -j DROP
    $IPT -A INPUT -p tcp --dport 22 -m state --state NEW -m recent --set --name SSH -j ACCEPT

    # Nginx
    $IPT -A INPUT -p tcp --dport 80 -name www -j ACCEPT


    # Logging nad REJECT
    $IPT -A INPUT -j LOG --log-prefix "IPT IN: "
    $IPT -A INPUT -j REJECT --reject-with icmp-port-unreachable
    $IPT -A OUTPUT -j LOG --log-prefix "IPT OUT: "
#   $IPT -A OUTPUT -j REJECT --reject-with icmp-port-unreachable
    $IPT -A FORWARD -j LOG --log-prefix "IPT FORWARD: "
    $IPT -A FORWARD -j REJECT --reject-with icmp-port-unreachable
}


function fw_stop{

    # Flush everything
    $IPT -F
    $IPT -F -t mangle
    $IPT -X -t mangle
    $IPT -F -t nat
    $IPT -X -t nat
    $IPT -X

    #Default
    $IPT -P INPUT ACCEPT
    $IPT -P FORWARD ACCEPT
    $IPT -P OUTPUT ACCEPT
}


fw_start()


