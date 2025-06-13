#!/bin/bash

# Simple deployment script for Netlify
echo "Deploying to Netlify..."

# Check if Netlify CLI is installed
if ! command -v netlify &> /dev/null; then
    echo "Netlify CLI not found. Installing..."
    npm install -g netlify-cli
fi

# Deploy the site
echo "Deploying from $(pwd)..."
netlify deploy --prod --dir .

echo "Deployment complete!"
