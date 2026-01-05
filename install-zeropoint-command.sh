#!/usr/bin/env bash
# Install zero-point custom command for Gemini CLI
# Run this script from within the zero-point repository

set -euo pipefail

COMMANDS_DIR="${HOME}/.gemini/commands"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="${SCRIPT_DIR}/.gemini/commands/zeropoint.toml"

echo "🚀 Installing zero-point Gemini CLI command..."

# Create commands directory if it doesn't exist
mkdir -p "${COMMANDS_DIR}"

# Copy the command file
if [ -f "${SOURCE_FILE}" ]; then
  cp "${SOURCE_FILE}" "${COMMANDS_DIR}/zeropoint.toml"
  echo "✅ Installed /zeropoint command to ${COMMANDS_DIR}/zeropoint.toml"
else
  echo "❌ Error: Could not find ${SOURCE_FILE}"
  echo "   Make sure you are running this script from the zero-point repository root."
  exit 1
fi

echo ""
echo "You can now use '/zeropoint' in any Gemini CLI session to sync agent rules!"
