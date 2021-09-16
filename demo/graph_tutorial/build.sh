#!/bin/bash
docker build . -t django-graph
docker run -p 8000:8000 --env-file ./.env django-graph
