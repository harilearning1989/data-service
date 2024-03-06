#Red Hat Enterprise Linux release 8.7 (Ootpa)
FROM nexusprod.corp.intranet:4567/redhat/ubi8:latest

# Add Maintainer Info
LABEL maintainer="Backend@lumen.com"

#---------------------Wildfly26 Starting------------------------------------------
WORKDIR /opt/jboss

RUN groupadd -r jboss -g 1000 && useradd -u 1000 -r -g jboss -m -d /opt/jboss -s /sbin/nologin -c "JBoss user" jboss && \
    chmod 755 /opt/jboss

# Set the WILDFLY_VERSION env variable
ENV WILDFLY_VERSION 26.1.1.Final
ENV JBOSS_HOME /opt/jboss/wildfly/
ENV WILDFLY_URL https://github.com/wildfly/wildfly/releases/download

USER root

# Add the WildFly distribution to /opt, and make wildfly the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
RUN mkdir $JBOSS_HOME
RUN cd $HOME \
    && curl -L -O ${WILDFLY_URL}/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz \
&& tar xf wildfly-$WILDFLY_VERSION.tar.gz --directory ${JBOSS_HOME} \
&& rm wildfly-$WILDFLY_VERSION.tar.gz \
    && chown -R jboss:0 ${JBOSS_HOME} \
    && chmod -R g+rw ${JBOSS_HOME}

#---------------------Wildfly26 Ending------------------------------------------

#---------Jdk Installation Start-----------------
ENV JAVA_VERSION openjdk-11+28_linux-x64_bin
ENV JAVA_URL https://download.java.net/openjdk/jdk11/ri
ENV JAVA_DIR /usr/lib/jvm/
RUN mkdir $JAVA_DIR
RUN cd $HOME \
&& curl -L -O ${JAVA_URL}/${JAVA_VERSION}.tar.gz \
&& tar xf ${JAVA_VERSION}.tar.gz --directory ${JAVA_DIR} \
&& rm ${JAVA_VERSION}.tar.gz

ENV JAVA_HOME ${JAVA_DIR}/jdk-11/
RUN export JAVA_HOME
RUN echo "export $JAVA_HOME"
#-----------Jdk Installation End-------------