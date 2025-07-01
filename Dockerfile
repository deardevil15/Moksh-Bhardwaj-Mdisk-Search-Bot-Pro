FROM python:3.12-slim

# Install system packages and build tools
RUN apt update && apt upgrade -y && \
    apt install -y git curl ffmpeg gcc g++ build-essential python3-dev libffi-dev libssl-dev

# Upgrade pip
RUN pip3 install --upgrade pip

# Set work directory
WORKDIR /app

# Copy source code
COPY . .

# Install dependencies
RUN pip3 install -r requirements.txt

# Run the bot
CMD ["python3", "main.py"]
