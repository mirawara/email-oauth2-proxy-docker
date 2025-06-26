# Use the official Python 3.13 slim image based on Debian Bookworm as the base image
FROM python:3.13-slim-bookworm

# Install the 'emailproxy' package using pip without caching to reduce image size
RUN pip install --no-cache-dir emailproxy

# Define the default command to run when the container starts
# It launches emailproxy in headless mode using the specified config file
ENTRYPOINT [ "emailproxy", "--no-gui", "--config", "/emailproxy.config" ]
