# Use -Dlog4j.debug for Log4J startup debugging info
# Use -Xms512M -Xmx512M to start with 512MB of heap memory. Set size according to your needs.
# Use -XX:+CMSClassUnloadingEnabled -XX:+CMSPermGenSweepingEnabled for PermGen GC

JRE_FOLDER="../.install4j/jre.bundle/Contents/Home/bin/"
JAVA_CMD="java"
if [ -d "$JRE_FOLDER" ]; then
    JAVA_CMD="../.install4j/jre.bundle/Contents/Home/bin/java"
fi

CPATH="./:lib/*:lib/apache-tomcat/bin/*:extensions/__lib__/*"
${JAVA_CMD} -cp ${CPATH} -Dfile.encoding=UTF-8 com.smartfoxserver.v2.Main $1 $2