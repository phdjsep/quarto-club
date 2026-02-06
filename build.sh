#!/bin/bash
set -e

# Install Quarto to /tmp to avoid rendering issues
QUARTO_VERSION="1.8.27"
echo "Installing Quarto ${QUARTO_VERSION}..."
cd /tmp
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
tar -xzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
export PATH=/tmp/quarto-${QUARTO_VERSION}/bin:$PATH

# Go back to repo directory
cd $OLDPWD

# Verify installation
quarto --version

# Render site
echo "Rendering Quarto site..."
quarto render