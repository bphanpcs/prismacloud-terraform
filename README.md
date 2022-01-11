# Prisma Cloud bulk account import

This repo contains a Cloud Terraform template to onboard multiple AWS, Azure and GCP accounts to Prisma Cloud tenant.

main.tf - TF template 
sboxGcp.csv - example CSV file that consists of Prisma Cloud 

Run 'terrafor apply' to import and 'terraform destroy' to delete accounts.

Other important notes: For GCP, you need GCP credentials file in JSON format on the host where you run this template from. The path for credentials_json  file is referenced in the CSV file.





