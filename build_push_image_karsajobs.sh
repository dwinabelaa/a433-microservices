#!/bin/bash

# build docker dari dockerfile
docker build -t dwinabela/karsajobs:latest .

# delay 5 detik
sleep 5

# lihat daftar image di lokal
docker images

# delay 5 detik
sleep 5

# login ke docker hub
docker login

# delay 5 detik
sleep 5

# push image ke docker hub
docker push dwinabela/karsajobs:latest
