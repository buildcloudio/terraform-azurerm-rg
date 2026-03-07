#------------------------------------------------------------------
# Azure - Resource Group
#------------------------------------------------------------------

# Resource groups

resource_groups = {
  "rg1" = {
    subscription = "buildcloudio"
    environment  = "dev"
    usecase      = "test"
    location     = "westeurope"
  },
  
  "rg2" = {
        subscription = "buildcloudio"
        environment  = "dev"
        usecase      = "test2"
        location     = "westeurope"
    }
}

#------------------------------------------------------------------