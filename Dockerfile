FROM ghost:4.22.1

WORKDIR /var/lib/ghost

RUN npm init -y \
    && npm i ghost-storage-github-jsdelivr -S \
    && npm i ghost-cdnimg-store -S \
    && mkdir -p content/adapters/storage/ghost-storage-github-jsdelivr \
    && mkdir -p content/adapters/storage/ghost-cdnimg-store \
    && cp -vr node_modules/ghost-storage-github-jsdelivr/index.js content/adapters/storage/ghost-storage-github-jsdelivr/index.js \
    && cp -vr node_modules/ghost-cdnimg-store/index.js content/adapters/storage/ghost-cdnimg-store/index.js
