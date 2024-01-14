apt-get update -y
apt-get install libgoogle-perftools-dev -y

chmod +x ./startup-server.sh

# cd /workspace/stable-diffusion-webui/models/Stable-diffusion && curl -L -o main.safetensors https://civitai.com/api/download/models/15236 # Deliberate-1
cd /workspace/stable-diffusion-webui/models/Stable-diffusion && curl -L -o main.safetensors https://civitai.com/api/download/models/94809 # RealCartoon3D
cd /workspace/stable-diffusion-webui/models/VAE && curl -L -o main.ckpt https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt
cd /workspace/stable-diffusion-webui/models/hypernetworks && curl -L -o main.pt https://civitai.com/api/download/models/6029

cd /workspace/
python3 -m venv chatfriends
source chatfriends/bin/activate
pip install -r requirements.txt
pip uninstall torch torchvision torchaudio -y
pip install torch torchvision torchaudio
pip install sqlalchemy
pip install pymysql
curl ifconfig.me


# cp /workspace/stable-diffusion-webui/custom/stable-diffusion.service /etc/systemd/system/
# cp /workspace/stable-diffusion-webui/custom/fastapi.service /etc/systemd/system/

# systemctl enable stable-diffusion
# systemctl enable fastapi
# systemctl start stable-diffusion
# systemctl start fastapi