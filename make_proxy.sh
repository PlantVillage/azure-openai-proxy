#!/bin/bash

docker system prune -f
docker build -t azure-openai-proxy:latest -f Dockerfile .
docker run -p 8282:8080 --name=azure-openai-proxy -v ./config.yaml:/app/config.yaml azure-openai-proxy:latest
