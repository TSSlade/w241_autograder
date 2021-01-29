#!/bin/sh -l

# Adapted from GitHub Actions MWE for Docker containers
# https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"