# playground-kubernetes
Playing around with Kubernetes

## Todo
- [x] create infra
- [x] run hello world example
- [x] create hello world container
- [x] push container to registry
- [x] start container from registry
- [x] move to busybox backed image
- [ ] aggregate logs in gcloud
- [ ] add google stack tracing stuff to container
- [ ] wrap container in `helm`
- [ ] dynamically add config to container
- [ ] add monitoring thresholds
- [ ] SSL
- [ ] get the whole shebang working locally

## Usage
```sh
# setup google cloud cluster
$ ./create-cluster

# build container from scratch
$ ./build-container <gcloud_project_name>

# send container off to kube cluster & expose to public
$ ./deploy-container <gcloud_project_name>
```

## See Also
- http://kubernetes.io/docs/getting-started-guides/
- http://kubernetes.io/docs/hellonode
- http://kubernetes.io/docs/user-guide/ui/
- http://kubernetes.io/docs/admin/high-availability/
- https://github.com/TheNewNormal/kube-solo-osx
- https://cloud.google.com/container-engine/docs/quickstart

## License
[MIT](https://tldrlegal.com/license/mit-license)
