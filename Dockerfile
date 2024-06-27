FROM python:3.10-bookworm

WORKDIR /stable-diffusion-webui

RUN apt-get update

RUN apt-get install -y libgl1 libglib2.0-0

RUN git clone --depth 1 --branch v1.9.4 https://github.com/AUTOMATIC1111/stable-diffusion-webui.git ./

RUN python launch.py --no-download-sd-model --do-not-download-clip --xformers --skip-torch-cuda-test --exit

RUN rm -rf configs embeddings extensions models ui-config.json

EXPOSE 7860

CMD ["python", "launch.py", "--no-download-sd-model", "--do-not-download-clip", "--xformers"] 
