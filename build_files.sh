#!/bin/bash

# Exit on first error
set -e

# Install dependencies
pip install -r requirements.txt

# Collect static files
python3.12 manage.py collectstatic --noinput

# Ensure static output directory exists
mkdir -p .vercel/output/static

# Copy static files
cp -r static/ .vercel/output/static/

# Make migrations
python3.12 manage.py makemigrations

# Apply migrations
python3.12 manage.py migrate