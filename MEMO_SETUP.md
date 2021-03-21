# MEMO_SETUP

## 手順

## GCPプロジェクト作成

https://cloud.google.com/free?hl=ja

## Cloud SDK インストール

## Cloud SDK 初期化

```
$ gcloud init
```

https://cloud.google.com/sdk/docs/initializing?hl=ja

## GCPプロジェクトを環境変数にセット

```
$ export GCP_PROJECT_ID=$(gcloud config get-value project)
```

## Terraform用サービスアカウント作成と鍵取得

```
$ gcloud iam service-accounts create terraform
$ gcloud iam service-accounts keys create terraform_cred.json --iam-account terraform@${GCP_PROJECT_ID}.iam.gserviceaccount.com
```

https://cloud.google.com/sdk/gcloud/reference/iam/service-accounts?hl=ja

★ `terraform_cred.json` は、しかるべき場所に移動し、環境変数にセット

```
$ export GOOGLE_CREDENTIALS=~/.config/gcloud/terraform_cred.json
```

## Terraform用サービスアカウントにロール付与

```
$ gcloud projects add-iam-policy-binding ${GCP_PROJECT_ID} --member serviceAccount:terraform@${GCP_PROJECT_ID}.iam.gserviceaccount.com --role roles/owner
```

https://cloud.google.com/iam/docs/granting-changing-revoking-access?hl=ja#updating-gcloud
https://cloud.google.com/iam/docs/reference/rest/v1/Policy?hl=ja#Binding

## 「課金」の有効化

## 利用するAPIの有効化
※たぶん随時追加していく感じ。

```
$ gcloud services enable iam.googleapis.com compute.googleapis.com storage-component.googleapis.com
```

https://cloud.google.com/endpoints/docs/openapi/enable-api?hl=ja

## tfstate格納用バケット作成

```
$ gsutil mb -l asia-northeast1 gs://tfstate-${GCP_PROJECT_ID}
```


