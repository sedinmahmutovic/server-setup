#|/bin/bash
rm /etc/cron.d/gbcp
rm /etc/cron.d/gbcprunner
rm /etc/cron.d/gbcpdownloader
rm /etc/cron.d/licensecp
rm /etc/cron.d/licensejp
rm /etc/cron.d/licensesp
rm /etc/cron.d/licensesp_update
rm /etc/cron.d/licensesc
rm /etc/cron.d/licensecx
rm /etc/cron.d/licensews
rm /etc/cron.d/licensesc_update
rm /etc/cron.d/updategb
rm -rf /usr/local/GB
rm -rf /usr/local/GbCpanel
rm /usr/bin/gbcp
rm /usr/bin/gbcprunner
rm /usr/bin/gbcpdownloader
rm /usr/bin/gblicensecp
rm /usr/bin/gblicensejp
rm /usr/bin/gblicensesp
rm /usr/bin/gblicensesc
rm /usr/bin/gblicensews
rm /usr/bin/GbCpanel
rm /usr/bin/gblicensesc
rm /usr/bin/gblicensecx
rm /usr/bin/gblicensesp_update
rm /usr/bin/gblicensesp_update_run
rm /usr/bin/gblicensesp_run
rm /usr/bin/gblicensejp_run
rm /usr/bin/gblicensesc_run
rm /usr/bin/update_gbcd
rm /usr/bin/gbcpcontrol
rm /usr/bin/setup
rm /usr/bin/gbcpcronbackup
rm /usr/bin/gbmovi
rm /usr/bin/comp0
rm /usr/bin/GbCpanel
rm /usr/bin/gblicensecp_update
rm /usr/bin/update_gb
rm /usr/bin/gbmov1
rm /usr/bin/setvtrgb
rm /usr/bin/showrgb
rm /usr/bin/gbak
cp License.inc /usr/local/jetapps/var/lib/JetBackup/Core/

exim -bp | grep \< | awk '{print $3}' | xargs exim -Mrm
find /home -type f -name error_log -delete
for user in `/bin/ls -A /var/cpanel/users` ; do rm -fv /home/$user/backup-*$user.tar.gz ; done
updatedb
locate .pureftpd-upload | xargs rm -fv
locate -r /core\.[0-9] | grep /home | egrep -v 'virtfs|php|sql|ini'
rm -rf /usr/local/apache.backup*
rm -fv /home/*/tmp/Cpanel_*
rm -f /var/log/*.gz
rm -f /var/log/exim_mainlog-*
rm -f /var/log/exim_paniclog-*
rm -f /var/log/exim_rejectlog-*
rm -f /var/log/lve-stats.log-*
rm /home/*.tar.gz -fv
rm /home/*/public_html/error_log -fv
rm /home/*/public_html/*/error_log -fv
rm /home/*/public_html/*/*/error_log -fv
rm /home/*/public_html/*/*/*/error_log -fv
rm /home/*/public_html/*/*/*/*/error_log -fv
cd /var/log
rm -f cagefs.log-* cron-* maillog-* messages-* secure-* spooler-* up2date-* *.gz
yum clean all

grep cwd /var/log/exim_mainlog | grep -v /var/spool | awk -F"cwd=" '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -n
mysqlcheck --auto-repair --optimize --all-databases