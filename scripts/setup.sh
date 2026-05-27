#!/data/data/com.termux/files/usr/bin/bash

echo "Setting up project environment..."

# ensure project root
cd "$(dirname "$0")/.."

# create virtual environment if missing
if [ ! -d ".venv" ]; then
    python -m venv .venv
    echo "Virtual environment created."
fi

# activate environment
source .venv/bin/activate

# upgrade pip
pip install --upgrade pip

echo "Setup complete."
echo "Activate manually with: source .venv/bin/activate"
