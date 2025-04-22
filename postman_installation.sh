# download postman linux package
wget https://dl.pstmn.io/download/latest/linux64

# extract the downloaded file
tar -xzf linux64

# move postman to /opt/
sudo mv Postman /opt/

# create a symbolic link
sudo ln -s /opt/Postman/Postman /usr/local/bin/postman

# create a desktop entry
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Name=Postman
GenericName=API Client
Comment=Postman is the complete toolchain for API developers
Exec=/opt/Postman/Postman
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/opt/Postman/app/resources/app/assets/icon.png
StartupWMClass=Postman
Categories=Development;Utilities;
EOL

# run postman in the terminal
postman
