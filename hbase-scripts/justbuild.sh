#!/bin/sh -ex
MAVEN_OPTS="-Xmx2g" mvn clean site install assembly:assembly package -DskipTests -Dsnappy -Prelease -Drelease=${ARTIFACT_VERSION}
