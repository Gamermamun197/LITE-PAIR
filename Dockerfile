FROM node:18

# Install dependencies safely
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ffmpeg \
    imagemagick \
    webp && \
    rm -rf /var/lib/apt/lists/*

# Continue your setup
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]
