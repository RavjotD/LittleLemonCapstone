#!/bin/bash

# Exit on first error
set -e

# Install dependencies
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput

# Ensure static output directory exists
mkdir -p .vercel/output/static

# Copy static files
cp -r static/ .vercel/output/static/

# Make migrations
python3 manage.py makemigrations

# Apply migrations
python3 manage.py migrate
