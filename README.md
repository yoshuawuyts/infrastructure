# playground-kubernetes
Playing around with Kubernetes

## Todo
- [x] run hello world example
- [ ] create hello world container
- [ ] push container to registry
- [ ] start container from registry
- [ ] wrap container in `helm`
- [ ] aggregate logs in gcloud
- [ ] add google stack tracing stuff to container
- [ ] dynamically add config to container
- [ ] add monitoring thresholds
- [ ] SSL
- [ ] get the whole shebang working locally

## Usage
```sh
# setup google cloud cluster
$ ./create-cluster

# build container from scratch
$ ./build-container

# send container off to kube cluster & expose to public
$ ./deploy-container
```

## See Also
- http://kubernetes.io/docs/getting-started-guides/
- http://kubernetes.io/docs/hellonode
- http://kubernetes.io/docs/user-guide/ui/
- http://kubernetes.io/docs/admin/high-availability/

## License
[MIT](https://tldrlegal.com/license/mit-license)
