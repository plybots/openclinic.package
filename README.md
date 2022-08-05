# Open Clinic

Open clinic project extention based on `http://openclinic.sourceforge.net/`

## System Requirements

- 2CPUs, 4GB RAM, 30GB Storage, Ubuntu Os

## Installation
- Clone the repository to your server and move the zip file to the `/opt` directory.
```
git clone https://fabricate.plydot.com/io/open-clinic.git
mv open-clinic/openclinic-package-v5.155.03.zip /opt/openclinic-package-v5.155.03.zip
cd /opt
```
- Unzip the Installation package
```
sudo chmod u+x wgetgdrive.sh
sudo ./wgetgdrive.sh 1DD2uab7X6aw1ZBXDHlT0tmd4m4-O2i7S openclinic-package-v5.155.03.zip
sudo apt install unzip
sudo unzip openclinic-package-v5.155.03.zip
cd openclinic-package-v5.155.03
```
#### Dependencies
1. MySQL
Install MySQL version 5.7, use the file `mysql-apt-config_0.8.12-1_all.deb` in the installation folder.
- Follow this [guide](https://www.how2shout.com/linux/add-repository-to-install-mysql-5-7-on-ubuntu-20-04-lts-linux/) and install mysql 5.7
- Edit the `cnf` file.
```
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
```
Add this to the end of the file, save and restart mysql.
>> Contents
```
skip_ssl
lower_case_table_names=1
```
Restart mysql using `sudo service mysql restart`\
Create mysql user, databases and tables.\
`sudo mysql`
```
CREATE DATABASE `openclinic_dbo` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE USER 'openclinic'@'%' IDENTIFIED BY '0pen';
GRANT Create user ON *.* TO 'openclinic'@'%';
GRANT Event ON *.* TO 'openclinic'@'%';
GRANT File ON *.* TO 'openclinic'@'%';
GRANT Process ON *.* TO 'openclinic'@'%';
GRANT Reload ON *.* TO 'openclinic'@'%';
GRANT Replication client ON *.* TO 'openclinic'@'%';
GRANT Replication slave ON *.* TO 'openclinic'@'%';
GRANT Show databases ON *.* TO 'openclinic'@'%';
GRANT Shutdown ON *.* TO 'openclinic'@'%';
GRANT Super ON *.* TO 'openclinic'@'%';
GRANT Create tablespace ON *.* TO 'openclinic'@'%';
GRANT Usage ON *.* TO 'openclinic'@'%';
GRANT Grant option ON *.* TO 'openclinic'@'%';
GRANT Alter ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Create ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Create view ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Delete ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Drop ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Grant option ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Index ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Insert ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT References ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Select ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Show view ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Trigger ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Update ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Alter routine ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Create routine ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Create temporary tables ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Execute ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Lock tables ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Grant option ON openclinic_dbo.* TO 'openclinic'@'%';
GRANT Alter ON *.* TO 'openclinic'@'%';
GRANT Create ON *.* TO 'openclinic'@'%';
GRANT Create view ON *.* TO 'openclinic'@'%';
GRANT Delete ON *.* TO 'openclinic'@'%';
GRANT Drop ON *.* TO 'openclinic'@'%';
GRANT Grant option ON *.* TO 'openclinic'@'%';
GRANT Index ON *.* TO 'openclinic'@'%';
GRANT Insert ON *.* TO 'openclinic'@'%';
GRANT References ON *.* TO 'openclinic'@'%';
GRANT Select ON *.* TO 'openclinic'@'%';
GRANT Show view ON *.* TO 'openclinic'@'%';
GRANT Trigger ON *.* TO 'openclinic'@'%';
GRANT Update ON *.* TO 'openclinic'@'%';
GRANT Alter routine ON *.* TO 'openclinic'@'%';
GRANT Create routine ON *.* TO 'openclinic'@'%';
GRANT Create temporary tables ON *.* TO 'openclinic'@'%';
GRANT Execute ON *.* TO 'openclinic'@'%';
GRANT Lock tables ON *.* TO 'openclinic'@'%';
GRANT Grant option ON *.* TO 'openclinic'@'%';
FLUSH PRIVILEGES;
```
Import initial data.
```
source /opt/open-clinic/sql/db.sql
exist
mysql -u openclinic -p -d ocadmin_dbo < /opt/open-clinic/sql/keys.sql
```

3. Java 
Install Java 8
```
sudo apt install openjdk-8-jdk
```
`java --version`
>> output
```
openjdk version "1.8.0_252"
OpenJDK Runtime Environment (build 1.8.0_252-8u252-b09-1ubuntu1-b09)
OpenJDK 64-Bit Server VM (build 25.252-b09, mixed mode)

```

#### Install application
Set up systemctl service to start and restart the application.
- create a files `/etc/systemd/system/openclinic.service` with the following contents.
>> contents
```
[Unit]
Description=openclinic
After=network.target

[Service]
Type=forking
User=root

Environment=CATALINA_PID=/opt/openclinic-package-v5.155.03/openclinic-SNAPSHOT-1.0.0/tomcat.pid
# Environment=JAVA_HOME=/usr/bin/java
Environment=CATALINA_HOME=/opt/openclinic-package-v5.155.03/openclinic-SNAPSHOT-1.0.0/
Environment=CATALINA_BASE=/opt/openclinic-package-v5.155.03/openclinic-SNAPSHOT-1.0.0/
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/openclinic-package-v5.155.03/openclinic-SNAPSHOT-1.0.0/bin/startup.sh
ExecStop=/opt/openclinic-package-v5.155.03/openclinic-SNAPSHOT-1.0.0/bin/shutdown.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
```
Enable service and start service
```
sudo systemctl enable openclinic.service 
sudo systemctl start openclinic.service
sudo systemctl status openclinic.service
```
>> output
```
● openclinic.service - openclinic
     Loaded: loaded (/etc/systemd/system/openclinic.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2022-07-18 18:45:58 CEST; 1 weeks 4 days ago
   Main PID: 2730 (java)
      Tasks: 77 (limit: 9479)
     Memory: 1.4G
     CGroup: /system.slice/openclinic.service
             └─2730 /usr/bin/java -Djava.util.logging.config.file=/opt/openclinic-package-v5.155.03/openclinic-SNAPSHOT-1.0.0/conf/logging.properties -Dja>

Warning: journal has been rotated since unit was started, output may be incomplete.
```
The application is now accesible directly through the IP Address of your server.
i.e. `http://my-server-ip-address/openclinic/`


## Authors and acknowledgment
&copy; 2022 [Plydot Systems](https://plydot.com)

