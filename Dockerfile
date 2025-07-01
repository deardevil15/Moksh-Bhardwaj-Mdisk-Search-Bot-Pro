FROM python:3.12-slim

# Install system packages
RUN apt update && apt upgrade -y && \
    apt install -y git curl ffmpeg

# Upgrade pip
RUN pip3 install --upgrade pip

# Clone your repo
RUN git clone https://github.com/deardevil15/Moksh-Bhardwaj-Mdisk-Search-Bot-Pro /MdiskWalaBot

# Set working directory
WORKDIR /MdiskWalaBot

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Start the bot
CMD ["python3", "main.py"]
