#!/usr/bin/env bash
# Joao G. Santos
# CAPSUL

docker-compose build \
  --no-cache

docker-compose up -d \
  --force-recreate \
  --no-deps

