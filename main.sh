# Clone Upstream
git clone --recursive -b lunar https://github.com/PikaOS-Linux/apx
cd ./apx

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
