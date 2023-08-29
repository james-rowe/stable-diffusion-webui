apt-get update
apt-get install libgoogle-perftools-dev
git clone https://github.com/james-rowe/stable-diffusion-webui

cd /workspace/stable-diffusion-webui/models/Stable-diffusion && curl -L -o main.safetensors https://civitai.com/api/download/models/15236
cd /workspace/stable-diffusion-webui/models/VAE && curl -L -o main.ckpt https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt
cd /workspace/stable-diffusion-webui/models/hypernetworks && curl -L -o main.pt https://civitai.com/api/download/models/6029

cp /workspace/stable-diffusion-webui/custom/stable-diffusion.service /etc/systemd/system/
cp /workspace/stable-diffusion-webui/custom/fastapi.service /etc/systemd/system/

# systemctl enable stable-diffusion
# systemctl enable fastapi
# systemctl start stable-diffusion
# systemctl start fastapi