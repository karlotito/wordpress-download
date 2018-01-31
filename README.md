# WordPress Download Bash Script
A bash script to download the latest WordPress using terminal.<br>

<h2>To make the bash script globally executable.</h2> <br>
<h3>First give a file permisison.</h3> <br>
chmod +x wp.sh
<h3>Then move the file in /usr/local/bin. You will need a sudo command to move the file.</h3>
sudo cp wp.sh /usr/local/bin

<h2>Here is the flow of the script.</h2>
<h3>Download Latest WordPress</h3>
curl -O https://wordpress.org/latest.tar.gz
<h3>unzip wordpress</h3>
tar -zxvf latest.tar.gz
<h3>change dir to wordpress</h3>
cd wordpress
<h3>copy file to parent dir</h3>
cp -rf . ..
<h3>move back to parent dir</h3>
cd ..
<h3>remove files from wordpress folder</h3>
rm -R wordpress
<h3>remove zip file</h3>
rm latest.tar.gz
