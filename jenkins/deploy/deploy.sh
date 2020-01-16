#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i ~/.ssh/id_rsa /tmp/.auth parnika@192.168.0.10:/tmp/.auth

scp -i ~/.ssh/id_rsa ./jenkins/deploy/publish.sh parnika@192.168.0.10:/tmp/publish

ssh -i ~/.ssh/id_rsa parnika@192.168.0.10 "/tmp/publish" 
