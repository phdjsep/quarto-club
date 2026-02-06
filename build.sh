#!/bin/bash
set -e

# Install Quarto
QUARTO_VERSION="1.8.27"
echo "Installing Quarto ${QUARTO_VERSION}..."
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
tar -xzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz
export PATH=$PATH:$(pwd)/quarto-${QUARTO_VERSION}/bin

# Verify installation
quarto --version

# Render site
echo "Rendering Quarto site..."
quarto render