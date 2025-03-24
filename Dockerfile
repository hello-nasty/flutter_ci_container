FROM ghcr.io/cirruslabs/flutter:latest

# Install required Android tools
RUN sdkmanager --install "ndk;27.0.12077973" \
    && sdkmanager --install "platform-tools" \
    && sdkmanager --install "platforms;android-34" \
    && sdkmanager --install "platforms;android-31" \
    && sdkmanager --install "cmake;3.22.1"

# Accept Android licenses
RUN yes | sdkmanager --licenses

# Set working directory
WORKDIR /app
