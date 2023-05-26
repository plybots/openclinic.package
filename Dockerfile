FROM ubuntu:18.04

RUN apt update \
    && apt install -y git \
    && apt install -y unzip \
    && apt install -y openjdk-8-jdk

WORKDIR /root

RUN git clone https://github.com/plydot/openclinic.package.git config \
    && cd config \
    && mv sql/init.sql /root/init.sql \
    && chmod u+x wgetgdrive.sh \
    && ./wgetgdrive.sh 1O6fEwgFg3Gd1MkI1BDqTuPa58LFZHaLY application.zip

RUN unzip /root/config/application.zip \
    && mv /root/application/openclinic /opt/openclinic \
    && mv /root/application/sql /opt/sql \
    $$ mv /root/config/db.cfg /opt/openclinic/conf/db.cfg

ENV CATALINA_PID /opt/openclinic/tomcat.pid
ENV CATALINA_HOME /opt/openclinic/
ENV CATALINA_BASE /opt/openclinic/
ENV JAVA_OPTS -Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom

RUN mysql -h openclinicdb -u root -p0pen < /root/init.sql

CMD ["/opt/openclinic/bin/startup.sh"]