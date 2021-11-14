FROM ghost:4.22.1

WORKDIR /var/lib/ghost

RUN npm init -y \
    && npm i ghost-storage-github-jsdelivr ghost-cdnimg-store ghost-oss-store ghost-qcloud-cos ghost-qn-store -S \
    && mkdir -p ./content.orig/adapters/storage \
    && cp -vr ./node_modules/ghost-storage-github-jsdelivr ./content.orig/adapters/storage/ghost-storage-github-jsdelivr \
    && cp -vr ./node_modules/ghost-cdnimg-store ./content.orig/adapters/storage/ghost-cdnimg-store \
    && cp -vr ./node_modules/ghost-oss-store ./content.orig/adapters/storage/ghost-oss-store \
    && cp -vr ./node_modules/ghost-qcloud-cos ./content.orig/adapters/storage/ghost-qcloud-cos \
    && cp -vr ./node_modules/ghost-qn-store ./content.orig/adapters/storage/ghost-qn-store
