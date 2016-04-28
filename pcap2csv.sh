#!/bin/bash
#This script converts pcap files to a csv file using tshark


for f in *.pcap
do tshark –r "$f" -T fields -e frame.time -e tcp.stream -e ip.src -e ip.dst -e _ws.col.Protocol -e tcp.srcport -e tcp.dstport -e tcp.len -e tcp.window_size -e tcp.flags.syn -e tcp.flags.ack -e tcp.flags.push -e tcp.flags.fin -e tcp.flags.reset -e ip.ttl -e _ws.col.Info -e tcp.analysis.ack_rtt -e vlan.id > "$f".csv
done
