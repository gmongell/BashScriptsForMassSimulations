#!/bin/bash
#testing for the presence of vmd install [expected fail]
vmd
su
sudo yum libcudart.so.4 libexpat.so.0 libsqlite3.so.0
sudo yum install libcudart.so.4 libexpat.so.0 libsqlite3.so.0
sudo yum install libGL.so.1
sudo yum install libGLU.so.1
sudo yum update
sudo yum install csh
sudo yum install libXinerama.so.1
sudo yum install libXi.so.6
sudo yum install libXft.so.2
#assumes that you have vmd untarred in Downloads
#since it can only be downloaded from a pass authenticated
#login site wget will not work (as far as the coder knows)
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure
cd ./Downloads/vmd-1.9.1.src/plugins
./configure
make
make install
make
install
./configure
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
make
cd src
make veryclean
make platform
make install
sudo make
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
cd ./Downloads/vmd-1.9.1.src/plugins/
make install
cd src
make install
sudo make install
su make install
sudo su make install
sudo make install
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure
sudo ./configure
make fedora
cd ./Downloads/vmd-1.9.1.src/plugins
make
make platform
make linux.opengl
make distrib
make install
cd src
make
make install
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/src
make
make install
ln -s /usr/local/lib/vmd/vmd_LI /bin
sudo ln -s /usr/local/lib/vmd/vmd_LI /bin
#test if vmd works
vmd
#adding this vmd install to the path
sudo PATH=/usr/local/bin/vmd:$PATH
PATH=/usr/local/bin/vmd:$PATH
#test if vmd works
vmd
make
install
./configure
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
make
make linux.opengl
make distrib
cd 
cd ./Downloads/vmd-1.9.1
make
./configure
make
make install
./configure
sudo make
sudo make install
install
cd src
make install
sudo make install
#installing required packages
make install
sudo make install
sudo
sudo su
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure
make
make install
make
make linux.mesa
./configure
make
cd src
make veryclean
sudo make veryclean
make
install
make install
sudo make install
#add vmd to the path
PATH=$PATH:/usr/local/bin/vmd
vmd
#installing a potentially required package
vmd
sudo make install
cmd
vmd
PATH=$PATH:/usr/local/bin/vmd
vmd
cd ./Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure
cd src
sudo make install
vmd
sudo make install
vmd
./configure IRIX6 OPENGL TK FLTK
cd $HOME/Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure IRIX6 OPENGL TK FLTK
./configure
cd src
make depend
make
make install
vmd
make install
vmd
cd $HOME/Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure WIN32 TCL MSVC
cd $HOME/Downloads/vmd-1.9.1.src/plug
cd $HOME/Downloads/vmd-1.9.1.src/
cd plugins/
sh build.csh
csh build.csh
./build.csh
whereis tcl
csh build.csh
./build.csh
ls
./build.linux
make
make clean
make veryclean
make
make LINUX
sudo make LINUX
make
./configure
cd
cd $HOME/Downloads/vmd-1.9.1.src/vmd-1.9.1/
./configure LINUX
#testing vmd [success]
vmd