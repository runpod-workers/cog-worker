# Use a standard Python image as base
FROM python:3.10-slim

ENV RUNPOD_REQUEST_TIMEOUT=600

# Install necessary packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    software-properties-common \
    curl \
    git \
    openssh-server \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Install Cog and RunPod
RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install cog runpod==1.7.13

# Copy the test input file
COPY test_input.json /

# Add the handler script
COPY src/handler.py /rp_handler.py

# Set the working directory
WORKDIR /

# Start the handler
CMD ["/opt/venv/bin/python3", "-u", "/rp_handler.py"]