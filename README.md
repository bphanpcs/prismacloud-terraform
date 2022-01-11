# Prisma Cloud bulk account import

This repo contains a Cloud Terraform template to onboard multiple AWS, Azure and GCP accounts to Prisma Cloud tenant.

main.tf - TF template 
sboxGcp.csv - example CSV file that consists of Prisma Cloud 


**To import the accounts, run**

_terraform init
terraform apply_


Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

   prismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"] will be created
  + resource "prismacloud_cloud_account" "bunnyfoo" {
      + disable_on_destroy = false
      + id                 = (known after apply)

      + gcp {
          + account_id       = "pcc-dev-sandbox"
          + account_type     = "account"
          + credentials_json = (sensitive value)
          + enabled          = false
          + group_ids        = [
              + "707faf3d-8f20-45f5-8071-08997e710905",
            ]
          + name             = "BP-GCP-Testaccount"
          + protection_mode  = "MONITOR"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

prismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"]: Creating...
prismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"]: Creation complete after 2s [id=gcp:pcc-dev-sandbox]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

**To delete the accounts, run 'terraform destroy'**

rismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"]: Refreshing state... [id=gcp:pcc-dev-sandbox]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

   prismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"] will be destroyed
  - resource "prismacloud_cloud_account" "bunnyfoo" {
      - disable_on_destroy = false -> null
      - id                 = "gcp:pcc-dev-sandbox" -> null

      - gcp {
          - account_id          = "pcc-dev-sandbox" -> null
          - account_type        = "account" -> null
          - compression_enabled = false -> null
          - credentials_json    = (sensitive value)
          - enabled             = false -> null
          - group_ids           = [
              - "707faf3d-8f20-45f5-8071-08997e710905",
            ] -> null
          - name                = "BP-GCP-Testaccount" -> null
          - protection_mode     = "MONITOR" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

prismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"]: Destroying... [id=gcp:pcc-dev-sandbox]
prismacloud_cloud_account.bunnyfoo["BP-GCP-Testaccount"]: Destruction complete after 1s

Destroy complete! Resources: 1 destroyed.





