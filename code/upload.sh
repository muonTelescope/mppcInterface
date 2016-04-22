#!/bin/bash
cd ~/oneDrive/projects/mppcInterface/
tar -czf ~/code.tar.gz code
scp ~/code.tar.gz $1:.
scp ~/oneDrive/projects/mppcInterface/code/remoteUpload.sh $1:.
scp ~/oneDrive/projects/mppcInterface/code/setup.sh $1:.
rm ~/code.tar.gz
