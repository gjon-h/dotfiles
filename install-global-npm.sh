#!/bin/bash

# --- Global NPM Packages List ---
NPM_PACKAGES=(
    "typescript-language-server"
    "typescript"
    "vscode-langservers-extracted"
    "bash-language-server"
    "prettier"
    "intelephense"  
    "dockerfile-language-server-nodejs"
    "@microsoft/compose-language-service"
    "yaml-language-server"
)

# --- Installation Logic ---
echo "Starting global npm package installation..."
echo "Installing ${#NPM_PACKAGES[@]} packages globally..."

# Install all packages in a single command for efficiency
npm install -g "${NPM_PACKAGES[@]}"

if [ $? -eq 0 ]; then
    echo "✅ Global npm packages installed successfully."
else
    echo "❌ An error occurred during global npm package installation." >&2
fi
