#!/bin/bash
sudo yum update
sudo yum -y install python3-pip
sudo yum -y install git
git clone https://github.com/sameergi/flask-library-app-sam.git
cd flask-library-app-sam/
pip3 install -r requirements.txt
screen -m -d python3 app.py
