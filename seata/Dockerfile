# https://hub.docker.com/orgs/seataio
FROM openjdk:11-jdk-slim

# set label
LABEL maintainer="Seata <seata.io>"

WORKDIR /$BASE_DIR

# ADD FORM distribution
ADD seata/bin /seata-server/bin
ADD seata/target /seata-server/target
ADD seata/conf /seata-server/conf
ADD seata/LICENSE /seata-server/LICENSE
ADD seata-server.sh /seat-server/bin/seata-server.sh

# set extra environment
ENV EXTRA_JVM_ARGUMENTS="-Djava.security.egd=file:/dev/./urandom -server -Xss512k -XX:+UnlockExperimentalVMOptions -XX:+UseContainerSupport XX:SurvivorRatio=10 -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=256m -XX:MaxDirectMemorySize=1024m -XX:-OmitStackTraceInFastThrow -XX:-UseAdaptiveSizePolicy -XX:+HeapDumpOnOutOfMemoryError -XX:+DisableExplicitGC -XX:+CMSParallelRemarkEnabled -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=75 -Xloggc:/var/log/seata_gc.log -verbose:gc -Dio.netty.leakDetectionLevel=advanced"

CMD ["bash","/seata-server/bin/seata-server.sh"]
