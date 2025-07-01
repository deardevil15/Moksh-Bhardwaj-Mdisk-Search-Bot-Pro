FROM python:3.11-slim

# Install system packages and build tools
RUN apt update && apt upgrade -y && \
    apt install -y --no-install-recommends \
    git curl ffmpeg gcc g++ build-essential python3-dev libffi-dev libssl-dev && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip

# Set working directory
WORKDIR /app

# Copy your code
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Run the bot
CMD ["python3", "main.py"]
