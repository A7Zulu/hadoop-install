

apt-get -y install python-software-properties ;\
	add-apt-repository ppa:webupd8team/java ;\
	apt-get update && apt-get -y upgrade ;\
	echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections ;\
	apt-get -y install oracle-java7-installer && apt-get clean ;\
	update-alternatives --display java ;\
	export JAVA_HOME=/usr/lib/jvm/java-7-oracle ;\
	export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec
	
apt-get -y install wget
apt-get -y install curl

wget http://archive.cloudera.com/cdh4/one-click-install/precise/amd64/cdh4-repository_1.0_all.deb
sudo dpkg -i cdh4-repository_1.0_all.deb
curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | sudo apt-key add -

apt-get update
apt-get install -y hadoop-conf-pseudo
apt-get install zookeeper-server
