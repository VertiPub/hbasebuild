#!/bin/sh -ex
MAVEN_OPTS="-Xmx2g" mvn clean site install assembly:assembly -DskipTests -Dsnappy -Prelease -Drelease=${ARTIFACT_VERSION}
mvn clean package -DskipTests -Dsnappy
