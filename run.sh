#!/bin/bash

# Set up environment variables
VENV_DIR="venv"
REQUIREMENTS_FILE="requirements.txt"
PYTHON_SCRIPT="main.py"

# Check if virtual environment exists
if [ ! -d "$VENV_DIR" ]; then
    echo "Virtual environment not found. Creating one..."
    python3 -m venv "$VENV_DIR"
fi

# Activate virtual environment
echo "Activating virtual environment..."
source "$VENV_DIR/bin/activate"

# Check if requirements.txt exists and install dependencies
if [ -f "$REQUIREMENTS_FILE" ]; then
    echo "Installing requirements..."
    pip install -r "$REQUIREMENTS_FILE"
else
    echo "No requirements.txt found. Skipping dependency installation."
fi

# Run the Python script
echo "Running $PYTHON_SCRIPT..."
python3 "$PYTHON_SCRIPT"
