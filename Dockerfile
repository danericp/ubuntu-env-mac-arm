FROM arm64v8/ubuntu@sha256:5a9a2edeaaa2a41c90a6c306b304baf49decc562e7b32d036aa9f9f61c9a5b84

# Disable Interactive process in background
ENV DEBIAN_FRONTEND=noninteractive

# Set Timezone
ENV TZ=America/New_York

# Instal MSMTP Packages
RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        mailutils msmtp msmtp-mta \
    && apt-get clean

# Install base packages
RUN apt-get update && \
    apt-get install -y \
        ca-certificates curl \
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

# Set working directory
WORKDIR /workspace

# Copy init Files
COPY init/setup_bashrc.sh /tmp/

# Run customized prompt script
RUN bash /tmp/setup_bashrc.sh && \
    rm /tmp/setup_bashrc.sh

# Default shell
CMD ["bash"]