#!/bin/sh
bitcoin-cli createwallet "wallet`date +%d%H%M%S`" > tmp.txt && \
tr -d  '[:punct:]' < tmp.txt > tmp1.txt && \
awk '{ print $2 }' tmp1.txt > tmp.txt && \
bitcoin-cli -rpcwallet="$(< tmp.txt)" getnewaddress `cat tmp.txt` > tmp2.txt && \
bitcoin-cli -rpcwallet="$(< tmp.txt)" getbalance > tmp3.txt && \
bitcoin-cli -rpcwallet="$(< tmp.txt)" dumpprivkey `cat tmp2.txt` >> tmp3.txt && \
cat tmp2.txt >> tmp3.txt && \
cat tmp3.txt && \
exit
