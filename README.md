# Server Setup

Scripts to setup Ubuntu, Debian and CentOS web servers.

# Copying Files to New Server

rsync -avz "-e ssh -p 22" --exclude=.git ~/www/server-setup/ root@NEW-SERVER-IP:/root/server-setup/

Or clone it on server

cd /root
git clone https://github.com/sedinmahmutovic/server-setup/
