#!/bin/bash

tag=ghcr.io/andersjanmyr/fastly:0.27.1
docker build --progress plain -t $tag .
