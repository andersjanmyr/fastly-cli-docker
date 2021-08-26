#!/bin/bash

tag=ghcr.io/andersjanmyr/fastly:0.36.0
docker build --progress plain -t $tag .
