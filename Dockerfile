# Use an official Ubuntu runtime as a parent image
FROM ubuntu:20.04

# Set the environment variable to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    tzdata \
    mpich \
    libmpich-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create a build directory and run CMake to build the application
RUN mkdir build && cd build && cmake .. && make

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the application when the container launches
CMD ["./build/my_application"]
