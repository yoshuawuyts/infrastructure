# infra
Infrastructure files

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

## Config
Create a terraform config file in
[`infra/terraform.tfvars`](https://www.terraform.io/intro/getting-started/variables.html):
```hcl
cluster_description = "yosh.land cluster"
cluster_name = "yosh-land"
gcloud_project = "<gcloud project name>"
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
- https://github.com/bitnami/charts

## License
[MIT](https://tldrlegal.com/license/mit-license)
