FROM ghost:4.22.1

WORKDIR /var/lib/ghost

RUN npm init -y \
    && npm install ghost-storage-github-jsdelivr -S \
    && mkdir -p content/adapters/storage/ghost-storage-github-jsdelivr \
    && cp -vr node_modules/ghost-storage-github-jsdelivr/index.js content/adapters/storage/ghost-storage-github-jsdelivr/index.js
