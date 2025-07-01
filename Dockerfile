# Use a stable Python version
FROM python:3.12-slim

# Install required system packages
RUN apt update && apt upgrade -y && \
    apt install -y git curl ffmpeg python3-pip

# Upgrade pip
RUN pip3 install --upgrade pip

# Copy requirements
COPY requirements.txt /requirements.txt

# Install Python dependencies
RUN pip3 install -r /requirements.txt

# Set up application directory
RUN mkdir /MessageSearchBot
WORKDIR /MessageSearchBot

# Copy start script
COPY start.sh /start.sh

# Run the bot
CMD ["/bin/bash", "/start.sh"]
