python3 -m venv chatfriends
source /workspace/chatfriends/bin/activate
cd /workspace/ && nohup python -m uvicorn main:app --host 0.0.0.0 --port 8000
cd /workspace/stable-diffusion-webui && nohup ./webui.sh