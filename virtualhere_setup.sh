# Install vhusbdarm
wget https://www.virtualhere.com/sites/default/files/usbserver/vhusbdarm
sudo chmod +x ./vhusbdarm
sudo mv vhusbdarm /usr/sbin

# Install vhusbdpin
wget http://www.virtualhere.com/sites/default/files/usbserver/scripts/vhusbdpin
sudo chmod +x ./vhusbdpin
sudo mv vhusbdpin /etc/init.d

# Update rc
sudo update-rc.d vhusbdpin defaults

# Reboot RaspberryPi
tput setaf 5
echo -e "VirtualHere daemon setup complete.  Please reboot your pi."
echo -e "  --> (run 'sudo reboot')"
tput sgr0

#sudo reboot
