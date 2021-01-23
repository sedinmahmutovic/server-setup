#!/bin/bash

# Author: xmexpi@gmail.com
# https://www.xmexpi.com

cd /usr/local/src
wget http://www.rfxn.com/downloads/maldetect-current.tar.gz
tar zxvf maldetect-current.tar.gz
cd maldetect-1.*
./install.sh

# sed -i 's/email_alert="0"/email_alert="1"/g' /usr/local/maldetect/conf.maldet
# sed -i 's/email_addr="you@domain.com"/email_addr="xmexpi@gmail.com"/g' /usr/local/maldetect/conf.maldet
