
## sftp docker

``` bash
docker run \
    -v /host/upload:/home/foo/upload \
    -p 2222:22 -d atmoz/sftp \
    foo:pass:1001
```

foo must have a writer permission and `1001` is the uid which is from `/etc/passwd`.
