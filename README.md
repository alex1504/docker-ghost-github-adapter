A Docker image that runs the Ghost CMS with cdnimg and github storage adapter installed. Base on [official ghost image](https://hub.docker.com/_/ghost).

# pull image

```
docker pull alex1504/ghost-adapter
```

# create container

use [ghost-storage-github-jsdelivr](https://github.com/alex1504/ghost-storage-github-jsdelivr) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-storage-github-jsdelivr \
  -e storage__ghost-storage-github-jsdelivr__token=<Github Token> \
  -e storage__ghost-storage-github-jsdelivr__owner=<Github Owner Name> \
  -e storage__ghost-storage-github-jsdelivr__repos=<Github Repos> \
  alex1504/ghost-adapter:latest
```

use [ghost-cdnimg-store](https://github.com/alex1504/ghost-cdnimg-store) adapter
```
docker run -p 2368:2368 \
  -e storage__active=ghost-cdnimg-store \
  -e storage__ghost-cdnimg-store__server=<Server Name> \
  alex1504/ghost-adapter:latest
```
