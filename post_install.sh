#!/bin/bash

mkdir logs

sh install_script.sh  2>&1 | tee logs/install.log
