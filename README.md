# infra
Infrastructure files

## Installation
```sh
$ brew install jq terraform gcloud
$ gcloud components install kubectl
```

## Usage
```txt
install     Install the infrastructure and k8 configuration
uninstall   Uninstall the infrastructure
start       Load configuration for this project and show status
```

## Project structure
```txt
buildkite/   Buildkite templates
gcloud/      Google cloud terraform files
kubernetes/  Kubernetes templates and scripts
script/      Shell scripts to interact with the cluster
secrets/     Credential templates
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
Create a terraform config file in [./terraform/terraform.tfvars][tfconfig]
```hcl
username = "<username>"
password = "<password>"
```

## See Also
- https://github.com/ipfs/infrastructure
- https://github.com/yoshuawuyts/there
- https://github.com/bitnami/charts

## License
[MIT](https://tldrlegal.com/license/mit-license)

[tfconfig]: https://www.terraform.io/intro/getting-started/variables.html
