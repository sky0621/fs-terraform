# fs-terraform

## tfenv

```
$ tfenv --version
tfenv 2.0.0-37-g0494129
```

```
$ tfenv install 0.14.8
$ tfenv use 0.14.8
```

```
$ terraform version
Terraform v0.14.8
```

## ref

### command
#### init
https://www.terraform.io/docs/commands/init.html

```
terraform init -reconfigure -backend-config=tf.secret
```

#### plan
https://www.terraform.io/docs/commands/plan.html

#### apply
https://www.terraform.io/docs/commands/apply.html

#### destroy
https://www.terraform.io/docs/commands/destroy.html

#### practice
##### fmt

```
terraform fmt
```

##### validate

```
terraform validate
```

module

```
terraform validate -check-variables=false
```

### lifecycle-hook
https://www.terraform.io/docs/language/meta-arguments/lifecycle.html

### provider

#### Google Cloud Platform Provider
https://registry.terraform.io/providers/hashicorp/google/latest/docs

### function
https://www.terraform.io/docs/language/functions/index.html

### type
https://www.terraform.io/docs/language/expressions/type-constraints.html

### module
https://www.terraform.io/docs/language/modules/syntax.html

#### Standard Module Structure
https://www.terraform.io/docs/language/modules/develop/structure.html

### GCP

#### service enable

```
gcloud services enable storage.googleapis.com
gcloud services enable storage-component.googleapis.com
```

#### google_compute_zones
https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones

#### backend
https://www.terraform.io/docs/backends/types/gcs.html
