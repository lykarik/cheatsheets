#Install Python 3.9.9 on CentOS/RHEL 7

#1.Requirements:

yum install gcc openssl-devel bzip2-devel

#2.Download Python 3.9:

cd /usr/src
wget https://www.python.org/ftp/python/3.9.9/Python-3.9.9.tgz
tar xzf Python-3.9.9.tgz

#3.Install Python 3.9.9:

cd Python-3.9.9
./configure --enable-optimizations
make altinstall

#(make altinstall is used to prevent replacing the default python binary file /usr/bin/python)

#4.Remove downloaded source archive file from your system:

rm /usr/src/Python-3.9.9.tgz

#5.Check Python Version

python3.9 -V

echo 'alias python=python3.9' >> ~/.bashrc


================================================

#If have problems with setup.py/setuptools/_ctypes available fo pip, can do this steps, including reinstall python from source

sudo yum -y install gcc gcc-c++ 
sudo yum -y install zlib zlib-devel
sudo yum -y install libffi-devel 
./configure
make
make install
