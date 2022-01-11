terraform {
  required_providers {
    prismacloud = {
      source = "PaloAltoNetworks/prismacloud"
      version = "1.1.5"
    }
  }
}

provider "prismacloud" {
    url = "api.prismacloud.io"
    username = ""
    password = ""
    customer_name = "Palo Alto Networks"
    skip_ssl_cert_verification= true
    logging= {"action": true, "send": true, "receive": true}
}
locals {
    //awsinstances = csvdecode(file("sboxAws.csv"))
    //azrinstances = csvdecode(file("sboxAzr.csv"))
    gcpinstances = csvdecode(file("sboxGcp.csv"))
}
/*
resource "prismacloud_cloud_account" "sboxAws" {
    for_each = { for inst in local.awsinstances : inst.name => inst }

    aws {
        name = each.value.name
        account_id = each.value.accountId
        external_id = each.value.externalId
        group_ids = split("||", each.value.groupIDs)
        role_arn = each.value.roleArn
    }
}

resource "prismacloud_cloud_account" "sboxAzr" {
    for_each = { for inst in local.azrinstances : inst.name => inst }

    azure {
        account_id = each.value.accountId
        group_ids = split("||", each.value.groupIDs)        
        name = each.value.name
		client_id = each.value.clientId
		key = each.value.key
		monitor_flow_logs = each.value.monitorFlowLogs
		tenant_id = each.value.tenantId
		service_principal_id = each.value.servicePrincipalId
    }
}
*/
resource "prismacloud_cloud_account" "bunnyfoo" {
    for_each = { for inst in local.gcpinstances : inst.name => inst }

    gcp {
        account_id = each.value.accountId
        group_ids = split("||", each.value.groupIDs)        
        name = each.value.name
		credentials_json = file(each.value.credentials_json)
		enabled = each.value.enabled
    }
}
