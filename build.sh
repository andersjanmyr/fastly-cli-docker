#!/bin/bash

tag=ghcr.io/andersjanmyr/fastly:0.36.1
docker build --progress plain -t $tag .
