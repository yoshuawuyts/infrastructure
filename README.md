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
- https://github.com/ipfs/infrastructure

## License
[MIT](https://tldrlegal.com/license/mit-license)
