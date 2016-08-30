#!/bin/sh

# debugging output
JAVA_OPTS="$JAVA_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=9090,server=y,suspend=n"

# Yourkit user agent lib
#JAVA_OPTS="$JAVA_OPTS -agentpath:/usr/share/tomcat7/bin/libyjpagent.so"

# memory settings
#JAVA_OPTS="$JAVA_OPTS -Xms512m -Xmx512m -XX:MaxPermSize=512m"
#JAVA_OPTS="$JAVA_OPTS -Xms1024m -Xmx1024m -XX:MaxPermSize=1024m"
#JAVA_OPTS="$JAVA_OPTS -Xms2048m -Xmx2048m -XX:MaxPermSize=2048m"
JAVA_OPTS="$JAVA_OPTS -Xms4096m -Xmx4096m -XX:MaxPermSize=2048m"

export JAVA_OPTS