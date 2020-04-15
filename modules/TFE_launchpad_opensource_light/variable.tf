variable "logged_user_objectId" {
    description = "objectId of the logged user initializing the launchpad"
    default = "694fbf88-5eb2-4481-b02a-036da12e6c5b"
}

variable "rover_pilot_client_id" {
    description = "This variable is set when improving the launchpad to allow a rover to access the keyvault when running the rover command"
    default = ""
}


variable "location" {
    description = "Azure region to deploy the launchpad in the form or 'southeastasia' or 'westeurope'"
    default ="southeastasia"
}

variable "tf_name" {
    description = "Name of the terraform state in the blob storage"
    default="terraform.tfstate"
}

variable "tags" {
    default = {}
}
 
variable "convention" {
    description = "(Optional) (Default = cafrandom) Naming convention to apply to the resources at creating time"
    default = "cafrandom"
}


variable "workspace" {
    description = "Define the workspace to deploy the launchapd [level0, sandpit]"
    default = "level0"
}


variable "use_prefix" {
    description = "(Optional) (Default = true) Generate a prefix that will be used to prepend all resources names"
    default = true
}

variable "enable_collaboration" {
    description = "(Optional) (Default = 0) When set to 1 create an Azure AD group to allow multiple developers to access the launchpad"
    default = false
}
