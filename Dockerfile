FROM arm64v8/ubuntu@sha256:5a9a2edeaaa2a41c90a6c306b304baf49decc562e7b32d036aa9f9f61c9a5b84

# Disable Interactive process in background
ENV DEBIAN_FRONTEND=noninteractive

# Set Timezone
ENV TZ=UTC

# Install base packages
RUN apt-get update && \
    apt-get install -y \
        curl \
        wget \
        git \
        vim \
        unzip \
        zip \
        jq \
        python3 \
        python3-pip \
        ca-certificates \
        gnupg \
        lsb-release \
        software-properties-common \
        sudo \
    && apt-get clean

# Set working directory
WORKDIR /workspace

# Default shell
CMD ["bash"]