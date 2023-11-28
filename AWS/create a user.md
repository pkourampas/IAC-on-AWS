## Introduction

In order to provisioning resources on AWS we are going to need a user with admin rights (access to all the resources on AWS).

As a good practive AWS advicing not to user the root user which you use to login into the aws console.

Following the bellow steps you will create a user to be used for provisioning purposes with Terraform. This user
will not have access to AWS GUI.

## Create user:

- [Login into aws console](https://console.aws.amazon.com/)
- [Search for IAM service](../attachments/iam-service.png)
- [Access management - Users](../attachments/access-management.png)
- [Username](../attachments/username.png)
- [Set permissions](../attachments/set-permissions.png)
- [Create user group](../attachments/create-group.png)
- [Add user in newly created group](../attachments/add-user-to-group.png)
- [review & create user](../attachments/review-and-create-user.png)

## Create access key

- [Access key](../attachments/Security-credentials.png)
- [Access key best practices](../attachments/access-key-best-practices.png)
- [Create access key](../attachments/create-access-key.png)
- [Retrieve Access Key](../attachments/retriece-access-key.png)

Please download the .csv file and store the credentials somewhere safe.
We are going to use the above created credentials to provision resrouces.

Keep it up..
