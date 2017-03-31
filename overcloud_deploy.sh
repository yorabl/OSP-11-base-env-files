#! /bin/bash

openstack overcloud deploy \
--templates \
-e OSP-11-base-env-files/network-environment.yaml \
-e OSP-11-base-env-files/network-isolation.yaml \
-e OSP-11-base-env-files/storage-environment.yaml \
-e OSP-11-base-env-files/puppet-pacemaker.yaml \
-e OSP-11-base-env-files/ceph-radosgw.yaml \
-e OSP-11-base-env-files/ceph-mds.yaml \
--control-scale 3 \
--compute-scale 4 \
--ceph-storage-scale 4 \
--control-flavor control \
--compute-flavor compute \
--ceph-storage-flavor ceph-storage \
--libvirt-type kvm \
--ntp-server clock.redhat.com \
--log-file ovrecloud_deploy.log
