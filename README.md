# Installation

## Prelude
User wants to have a direct access to some files and directories:
- configs/
- embeddings/
- extensions/
- models/
- outputs/
- config.json
- ui-config.json

You should manually create the directories above and put `config.json` and `ui-config.json` files from this repository near the created directories.

## Command
``` bash
docker run --gpus all --net=host \
-v /your_files/configs:/stable-diffusion-webui/configs \
-v /your_files/embeddings:/stable-diffusion-webui/embeddings \
-v /your_files/extensions:/stable-diffusion-webui/extensions \
-v /your_files/models:/stable-diffusion-webui/models \
-v /your_files/outputs:/stable-diffusion-webui/outputs \
-v /your_files/config.json:/stable-diffusion-webui/config.json \
-v /your_files/ui-config.json:/stable-diffusion-webui/ui-config.json \
ghcr.io/gelerum/stable-diffusion-webui:latest
```
