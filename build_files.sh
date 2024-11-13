#!/bin/bash

# Install dependencies
pip install -r requirement.txt

# Collect static files
python manage.py collectstatic --noinput