# Docker Hub - arm64v8/ubuntu:26.10
# https://hub.docker.com/layers/arm64v8/ubuntu/26.10/images/sha256-d206b9277d9b8fab7fdefa816b4a6e290d57c9e98e82a00474cb8a1f806cb9e1
FROM arm64v8/ubuntu@sha256:5a9a2edeaaa2a41c90a6c306b304baf49decc562e7b32d036aa9f9f61c9a5b84

# Set the DEBIAN_FRONTEND environment variable to noninteractive to prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Container timezone is set to New York, USA
ENV TZ=America/New_York

# Install required packages for sending emails (MSMTP) and mail utilities, then clean up the package cache to reduce image size
RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        mailutils msmtp msmtp-mta \
    && apt-get clean

# Install Java (OpenJDK 17 is a stable choice)
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install required packages for development and system utilities
RUN apt-get update && \
    apt-get install -y \
        curl \
        git gnupg grep \
        jq \
        lsb-release \
        software-properties-common sudo\
        tree \
        unzip uuid-runtime \
        vim \
        wget \
        zip \
        python3 python3-pip \
    && apt-get clean

# Set the working directory to /workspace
WORKDIR /workspace

# Copy the msmtprc configuration file and the setup_bashrc.sh script into the container
COPY init/msmtprc /etc/msmtprc
COPY init/setup_bashrc.sh /tmp/

# Set the permissions of the msmtprc configuration file to be readable and writable only by the owner
RUN chmod 600 /etc/msmtprc
# Execute the setup_bashrc.sh script to customize the bash prompt and remove the script after execution
RUN bash /tmp/setup_bashrc.sh && \
    rm /tmp/setup_bashrc.sh

# Set the default shell to bash
CMD ["bash"]