FROM python:3.7-slim
WORKDIR /app

RUN apt-get update && \
    apt-get install -y python3-dev python3-pip python3-venv && \
    rm -rf /var/lib/apt/lists/*  

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./ /app
ENTRYPOINT ["bash"]
