## General info
This very primitive script generates wallet and shows private key and address in terminal window and puts that information in walletxxxx.txt (xxxx is date, hours, minutes and seconds) file.

## Setup
To run this very primitive script, you need to have bitcoind installed on system, as script uses bitcoin-cli to generate wallet address and keys:

```
$ git clone https://github.com/31n81t/cautious-waffle.git
$ cd cautious-waffle
$ chmod +x addrgen.sh
$ ./addrgen.sh
```
