FROM ghost:4.22.1

WORKDIR /var/lib/ghost

RUN npm init -y \
    && npm i ghost-storage-github-jsdelivr ghost-cdnimg-store -S \
    && mkdir -p ./content.orig/adapters/storage/ghost-storage-github-jsdelivr \
    && mkdir -p ./content.orig/adapters/storage/ghost-cdnimg-store \
    && cp -vr ./node_modules/ghost-storage-github-jsdelivr/index.js ./content.orig/adapters/storage/ghost-storage-github-jsdelivr/index.js \
    && cp -vr ./node_modules/ghost-cdnimg-store/index.js ./content.orig/adapters/storage/ghost-cdnimg-store/index.js
