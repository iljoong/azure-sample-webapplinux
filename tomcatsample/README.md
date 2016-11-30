## Sample docker command
To build, run and deploy the sample docker image, please refer following commands

### Docker build
```
$ docker build -t iljoong/tomcatsample .
```

### Docker run
```
$ docker run -p 80:80 -d iljoong/tomcatsample
```

### Docker push
```
$ docker login

$ docker push iljoong/tomcatsample
```