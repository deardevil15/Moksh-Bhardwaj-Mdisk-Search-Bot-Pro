#!/bin/bash

echo "Cloning Repo..."
git clone https://github.com/Greymattersbot/Link-Search-Bot-Pro /MdiskWalaBot

cd /MdiskWalaBot || exit 1

echo "Installing requirements..."
pip3 install -r requirements.txt

echo "Starting Bot..."
python3 main.py
