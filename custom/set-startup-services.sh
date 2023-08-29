# copy service files to /etc/systemd/system
cp /workspace/stable-diffusion-webui/custom/stable-diffusion.service /etc/systemd/system/
cp /workspace/stable-diffusion-webui/custom/fastapi.service /etc/systemd/system/
systemctl enable stable-diffusion
systemctl enable fastapi
systemctl start stable-diffusion
systemctl start fastapi