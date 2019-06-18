cd /opt
git clone https://git.kolab.org/diffusion/RPK/roundcubemail-plugins-kolab.git
cd /opt/roundcubemail-plugins-kolab
git checkout dev/elastic
npm install -g less
ln -s /usr/share/nginx/roundcubemail/skins /opt/roundcubemail-plugins-kolab/
# Change content of less-build.sh to lessc --rewrite-urls=all -x ...
./less-build.sh
cp plugins/libkolab/skins/elastic/libkolab.min.css plugins/libkolab/skins/elastic/libkolab.css
chown www-data. /opt/roundcubemail-plugins-kolab
ln -s /opt/roundcubemail-plugins-kolab/plugins/libkolab /usr/share/nginx/roundcubemail/plugins/
ln -s /opt/roundcubemail-plugins-kolab/plugins/calendar /usr/share/nginx/roundcubemail/plugins/
ln -s /opt/roundcubemail-plugins-kolab/plugins/libcalendaring /usr/share/nginx/roundcubemail/plugins/
cd /usr/share/nginx/roundcubemail
vim config/config.inc.php # Add 'calender', 'libcalendaring', 'libkolab' to plugins array