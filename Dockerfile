FROM tensorflow/tensorflow:1.14.0-gpu-py3

RUN pip3 install boto3 flask-dropzone flask-uploads requests jsonpickle flask Pillow opencv-python matplotlib numpy
RUN apt-get update && apt-get install -y curl lsb-release sudo rsync libsm6 libxext6 libxrender-dev

COPY . /app
WORKDIR /app

ENTRYPOINT [ "python3" ]
CMD [ "main.py" ]