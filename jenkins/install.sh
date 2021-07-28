#!/bin/bash

# APT INSTALLS
sudo apt-get update 
sudo apt-get install python3 python3-pip python3-venv -y

# CREATE THE PYTHON VIRTUAL ENVIRONMENT THEN ACTIVATE IT
python3 -m venv venv
source venv/bin/activate

# PERFORM PIP INSTALLING
pip3 install -r requirements.txt
pip3 install pytest pytest-cov flask_testing