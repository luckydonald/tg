## **Telegram messenger CLI for use with [PyTG2](https://bitbucket.org/luckydonald/pytg2)** ##

This is a fork of the [outdated fork](https://github.com/efaisal/pytg) of the [Command-line interface](https://github.com/vysheng/tg) for [Telegram](http://telegram.org).  
  
     
-------------------

-------------------

-------------------

### Upgrading to version 2 ("TG for PyTG2")

First of all, the binary is now in ./bin folder and is named telegram-cli. So be careful, not to use old binary, it will not work.

Second, config folder is now ${HOME}/.telegram-cli

Third, database is not compatible with older versions, so you'll have to login again.

Fourth, in peer_name '#' are substitued to '@'. (Not applied to appending of '#%d' in case of two peers having same name).

### Installation

Clone GitHub Repository

     git clone https://bitbucket.org/luckydonald/tg-for-pytg2.git && cd tg-for-pytg2

#### Linux and BSDs

Install libs: readline or libedit, openssl and (if you want to use config) libconfig and liblua.
If you do not want to use them pass options --disable-libconfig and --disable-liblua respectively.

On Ubuntu/Debian use: 

     sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev

Then,

     ./configure --disable-liblua
     make

For other systems see the original [telegram-cli](https://github.com/vysheng/tg)

### Usage

    bin/telegram-cli -k <public-server-key>
    
By default public key is stored in the same folder named tg-server.pub or in /etc/telegram-cli/server.pub, if it's not, specify where to find it:

    bin/telegram-cli -k tg-server.pub