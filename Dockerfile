# Base image with Python and Git
FROM python:3.10-slim

# Install dependencies for building
RUN apt-get update && \
    apt-get install -y git build-essential

# Clone the MemSum repository
WORKDIR /wordir
RUN git clone https://github.com/4ndr3lu15/MemSum.git .

# Install torch, torchvision, torchaudio
RUN pip install torch torchvision torchaudio

# Install requirements from requirements.txt
COPY requirements.txt .
RUN pip install -r requirements.txt

# Command to run the application (replace with your actual command)
CMD ["bash"]  # Replace with your main script