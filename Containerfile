# This is a container that runs the Foxglove ROS bridge
FROM ros:humble-ros-base

# Standard annotations
LABEL org.opencontainers.image.title="Foxglove Bridge"
LABEL org.opencontainers.image.description="A WebSocket bridge for Foxglove."
LABEL org.opencontainers.image.version="0.8.0"
LABEL org.opencontainers.image.authors="Xander Soldaat <xander@botbench.com>"
LABEL org.opencontainers.image.url="https://botbench.com"
LABEL org.opencontainers.image.documentation="https://yourwebsite.example.com/docs"
LABEL org.opencontainers.image.source="https://github.com/botbench/foxglove-bridge"
LABEL org.opencontainers.image.licenses="MIT"

# Network ports used
LABEL org.opencontainers.image.exposedPorts="8765/tcp"
EXPOSE 8765

# Install Foxglove
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-$ROS_DISTRO-foxglove-bridge \
    && rm -rf /var/lib/apt/lists/*

