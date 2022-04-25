#!/bin/bash
sudo yum update
sudo yum install -y git
git clone https://github.com/cs220s22/Max-Luke-CI-CD-Pipeline.git
cd Max-Luke-CI-CD-Pipeline
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
sudo .venv/bin/python3 -b :80 app.py &
