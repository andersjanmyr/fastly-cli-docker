#!/bin/bash

tag=ghcr.io/andersjanmyr/fastly:0.39.3
docker build --progress plain -t $tag .
