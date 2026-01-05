#!/usr/bin/env bash
# Remote install zero-point custom command for Gemini CLI
# Usage: curl -sSL https://raw.githubusercontent.com/dgulli/zero-point/main/install-remote.sh | bash

set -euo pipefail

COMMANDS_DIR="${HOME}/.gemini/commands"
TOML_URL="https://raw.githubusercontent.com/dgulli/zero-point/main/.gemini/commands/zeropoint.toml"

echo "🚀 Installing zero-point Gemini CLI command..."

# Create commands directory if it doesn't exist
mkdir -p "${COMMANDS_DIR}"

# Download the command file
if curl -sSL "${TOML_URL}" -o "${COMMANDS_DIR}/zeropoint.toml"; then
  echo "✅ Installed /zeropoint command to ${COMMANDS_DIR}/zeropoint.toml"
else
  echo "❌ Error: Failed to download command file from ${TOML_URL}"
  exit 1
fi

echo ""
echo "You can now use '/zeropoint' in any Gemini CLI session to sync agent rules!"
