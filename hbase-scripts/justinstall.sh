#!/bin/sh -ex
export RPM_VERSION=0.1.0
export RPM_NAME=`echo vcc-hbase-${ARTIFACT_VERSION}`
echo "Building Flume Version RPM ${RPM_NAME} with RPM version ${RPM_VERSION}-${DATE_STRING}"


export RPM_BUILD_DIR=${INSTALL_DIR}/opt
mkdir --mode=0755 -p ${RPM_BUILD_DIR}
cd ${RPM_BUILD_DIR}
# this will break until I know where hte tarball lives
#tar -xvzpf ${WORKSPACE}/hbase/hbase-ng-dist/target/hbase-${ARTIFACT_VERSION}.tar.gz

cd ${RPM_DIR}
fpm --verbose \
--maintainer ops@verticloud.com \
--vendor VertiCloud \
--provides ${RPM_NAME} \
--description "${DESCRIPTION}" \
-s dir \
-t rpm \
-n ${RPM_NAME} \
-v ${RPM_VERSION} \
--iteration ${DATE_STRING} \
--rpm-user root \
--rpm-group root \
-C ${INSTALL_DIR} \
opt
