FROM tongace/openkm:6.3.6

MAINTAINER Chairat Samphaothong (chairat.it08@gmail.com)

ENV CATALINA_HOME /home/openkm
ENV JAVA_HOME /usr/local/java
ENV ORACLE_JAVA_HOME /usr/lib/jvm/java-8-oracle/

RUN ln -s $ORACLE_JAVA_HOME $JAVA_HOME

ENV PATH $PATH:$CATALINA_HOME/bin

ADD start_openkm.sh /home/openkm/start_openkm.sh
RUN chmod +x /home/openkm/start_openkm.sh

ADD start_openkm.sh /home/openkm/start_openkm.sh
ADD OpenKM.cfg /home/openkm/OpenKM.cfg
ADD OpenKM.xml /home/openkm/OpenKM.xml
ADD server.xml /home/openkm/conf/server.xml

EXPOSE 8080

VOLUME /opt/openkm/repository

VOLUME /opt/openkm/conf

CMD /bin/bash -c "source /home/openkm/start_openkm.sh"