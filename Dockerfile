FROM python:3.10-bookworm

WORKDIR /stable-diffusion-webui

RUN apt-get update

RUN apt-get install -y libgl1 libglib2.0-0

EXPOSE 7860

CMD ["python", "launch.py", "--no-download-sd-model", "--do-not-download-clip", "--xformers"]
