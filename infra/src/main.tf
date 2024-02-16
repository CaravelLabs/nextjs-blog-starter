terraform {
  backend "azurerm" {
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.54.0"
    }
  }
}

provider "azurerm" {
  subscription_id            = var.subscription_id
  tenant_id                  = var.tenant_id
  client_id                  = var.client_id
  client_secret              = var.client_secret
  skip_provider_registration = true
  features {}
}

data "azurerm_resource_group" "ch" {
  name = var.main_resource_group_name
}



resource "azurerm_service_plan" "ch" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.ch.name
  os_type             = "Linux"
  sku_name            = var.web_tier
}

resource "azurerm_linux_web_app" "ch" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.ch.name
  service_plan_id     = azurerm_service_plan.ch.id
  https_only          = "true"

  app_settings = {
    WEBSITE_RUN_FROM_PACKAGE        = "1"
    WEBSITE_ENABLE_SYNC_UPDATE_SITE = "true"
    SCM_DO_BUILD_DURING_DEPLOYMENT  = "false"
  }

  site_config {
    always_on        = var.web_always_on
    app_command_line = "NODE_ENV=production npx npm@latest run start"
    ftps_state       = "Disabled"
    http2_enabled    = true
    application_stack {
      node_version = "18-lts"
    }
  }
  #   lifecycle {
  #     ignore_changes = [
  #       # These are set from the build pipelines
  #     ]
  #   }
}


