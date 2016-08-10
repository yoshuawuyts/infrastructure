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

## Directory stucture
```txt
helm/         # helm charts
kubernetes/   # kubernetes manifests
terraform/    # terraform files
secrets/      # kubernetes secrets
README.md
```

## Config
### Google cloud configuration
Before infrastructure can be created we must get a config file under
`~/.config/gcloud/credentials.json`.

1. Visit the [Google Developers
   Console](https://console.developers.google.com/project).
2. Create a new project or click on an existing project.
3. Navigate to __API Manager > Dashboard__ section and turn on the following
   APIs:
  - Google Cloud Datastore API
  - Google Cloud Storage
  - Google Cloud Storage JSON API
4. Navigate to __API Manager > Credentials__
  - If you want to use a new service account, click on __Create credentials__
    and select __Service account key__ from the dropdown. Choose the __Compute
    Engine default service account__, the __JSON__ format and press __create__
    to create the account and download your key.
    created, you will be prompted to download the JSON key file that the
    library uses to authorize your requests.
  - If you want to generate a new key for an existing service account, click on
    __Generate new JSON key__ and download the JSON key file.

- [gcloud-ruby/authentication](http://googlecloudplatform.github.io/gcloud-ruby/docs/v0.1.1/AUTHENTICATION.md)

### Terraform configuration
Create a terraform config file in
[`infra/terraform.tfvars`](https://www.terraform.io/intro/getting-started/variables.html):
```hcl
cluster_description = "yosh.land cluster"
cluster_name = "yosh-land"
gcloud_project = "<gcloud project name>"
```

## See Also
- https://github.com/ipfs/infrastructure
- https://github.com/yoshuawuyts/there

## License
[MIT](https://tldrlegal.com/license/mit-license)
