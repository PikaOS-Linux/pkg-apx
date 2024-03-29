# Clone Upstream
git clone --recursive https://github.com/Vanilla-OS/apx -b v2.4.0
cp -rvf ./debian ./apx/
cd ./apx

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
