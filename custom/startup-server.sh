#!/bin/bash
set -e

python3 -m venv /workspace/chatfriends
source /workspace/chatfriends/bin/activate
cd /workspace/ && nohup python -m uvicorn main:app --host 0.0.0.0 --port 8000 > /workspace/uvicorn_output.txt &
cd /workspace/stable-diffusion-webui && nohup ./webui.sh > /workspace/webui_output.txt &