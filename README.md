# infra
Infrastructure files

## Todo
- [x] create infra
- [x] automate infra creation using terraform
- [x] run hello world example
- [x] create hello world container
- [x] push container to registry
- [x] start container from registry
- [x] move to busybox backed image
- [ ] wrap container in config
- [x] run npm install on startup
- [ ] add google stack tracing stuff to container
- [ ] figure out how secrets work & load secret
- [ ] ~~wrap container in `helm`~~
- [ ] dynamically add config to container
- [ ] ~~add monitoring thresholds~~
- [ ] aggregate logs in gcloud
- [ ] SSL
- [ ] get the whole shebang working locally

## Usage
```sh
# setup google cloud cluster
$ terraform apply

# load cluster credentials into kubernetes
$ gcloud container clusters get-credentials test-cluster

# build container from scratch
$ ./script/build-container <gcloud_project_name>

# send container off to kube cluster & expose to public
$ ./script/deploy-container <gcloud_project_name>
```

## See Also
- http://kubernetes.io/docs/getting-started-guides/
- http://kubernetes.io/docs/hellonode
- http://kubernetes.io/docs/user-guide/ui/
- http://kubernetes.io/docs/admin/high-availability/
- https://github.com/TheNewNormal/kube-solo-osx
- https://cloud.google.com/container-engine/docs/quickstart
- https://github.com/kubernetes/kubernetes/blob/release-1.1/docs/proposals/federation.md
- http://www.devoperandi.com/kubernetesterraform-multiple-availability-zone-deployments/
- https://github.com/yoshuawuyts/playground-aws
- https://cloud.google.com/sdk/gcloud/reference/container/clusters/get-credentials?hl=en_US

## License
[MIT](https://tldrlegal.com/license/mit-license)
