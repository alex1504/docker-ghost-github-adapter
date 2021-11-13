A Docker image that runs the Ghost CMS with an cdnimg and github storage adapter installed.

# pull image

```
docker pull alex1504/ghost-cdn
```

# create container

use [ghost-storage-github-jsdelivr](https://github.com/alex1504/ghost-storage-github-jsdelivr) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-storage-github-jsdelivr \
  -e storage__ghost-storage-github-jsdelivr__token=<Github Token> \
  -e storage__ghost-storage-github-jsdelivr__owner=<Github Owner Name> \
  -e storage__ghost-storage-github-jsdelivr__repos=<Github Repos> \
  alex1504/ghost-cdn:latest
```

use [ghost-cdnimg-store](https://github.com/alex1504/ghost-cdnimg-store) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-cdnimg-store \
  -e storage__ghost-cdnimg-store__server=<Server Name> \
  alex1504/ghost-cdn:latest
```
