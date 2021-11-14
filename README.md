A Docker image that runs the Ghost CMS with ali-oss, tencent-cos, qiniu, cdnimg, github storage adapter installed. Base on [official ghost image](https://hub.docker.com/_/ghost).

# Pull image

```
docker pull alex1504/ghost-adapter
```

# Create Container
Create container by set environment param to use different adapter

## ghost-storage-github-jsdelivr
use [ghost-storage-github-jsdelivr](https://github.com/alex1504/ghost-storage-github-jsdelivr) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-storage-github-jsdelivr \
  -e storage__ghost-storage-github-jsdelivr__token=<Github Token> \
  -e storage__ghost-storage-github-jsdelivr__owner=<Github Owner Name> \
  -e storage__ghost-storage-github-jsdelivr__repos=<Github Repos> \
  alex1504/ghost-adapter:latest
```

## ghost-cdnimg-store
use [ghost-cdnimg-store](https://github.com/alex1504/ghost-cdnimg-store) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-cdnimg-store \
  -e storage__ghost-cdnimg-store__server=<Server Name> \
  alex1504/ghost-adapter:latest
```

## ghost-oss-store
use [ghost-oss-store](https://github.com/MT-Libraries/ghost-oss-store) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-oss-store \
  -e storage__ghost-oss-store__accessKeyId=<accessKeyId> \
  -e storage__ghost-oss-store__accessKeySecret=<accessKeySecret> \
  -e storage__ghost-oss-store__bucket=<bucket> \
  -e storage__ghost-oss-store__region=<region> \
  -e storage__ghost-oss-store__origin=<origin> \
  -e storage__ghost-oss-store__fileKey__safeString=1 \
  -e storage__ghost-oss-store__fileKey__prefix=ghost/ \
  -e storage__ghost-oss-store__suffix=<suffix> \
  alex1504/ghost-adapter:latest
```

## ghost-qcloud-cos
use [ghost-qcloud-cos](https://github.com/ZhelinCheng/ghost-qcloud-cos) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-qcloud-cos \
  -e storage__ghost-qcloud-cos__baseUrl=<baseUrl> \
  -e storage__ghost-qcloud-cos__SecretId=<SecretId> \
  -e storage__ghost-qcloud-cos__SecretKey=<SecretKey> \
  -e storage__ghost-qcloud-cos__Bucket=<Bucket> \
  -e storage__ghost-qcloud-cos__Region=<Region> \
  alex1504/ghost-adapter:latest
```

## ghost-qn-store
use [ghost-qn-store](https://github.com/Minwe/qn-store) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-qn-store \
  -e storage__ghost-qn-store__accessKey=<accessKey> \
  -e storage__ghost-qn-store__secretKey=<secretKey> \
  -e storage__ghost-qn-store__bucket=<bucket> \
  -e storage__ghost-qn-store__origin=<origin> \
  -e storage__ghost-qn-store__uploadURL=up-z2.qiniup.com \
  -e storage__ghost-qn-store__fileKey__safeString=1 \
  -e storage__ghost-qn-store__fileKey__prefix=YYYYMM/ \
  alex1504/ghost-adapter:latest
```
