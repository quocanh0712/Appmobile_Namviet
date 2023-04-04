#!/bin/bash
set -e

docker build --pull --rm -f "Dockerfile" -t ftulms:latest "."
