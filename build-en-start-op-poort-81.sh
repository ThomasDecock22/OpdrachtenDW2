#!/bin/bash

docker build -t demo-site-image .

docker run -d -p 81:80 --name demo-site demo-site-image
