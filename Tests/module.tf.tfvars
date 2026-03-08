#------------------------------------------------------------------
# Azure - Resource Group
#------------------------------------------------------------------

# Resource groups

resource_groups = {
  "rg1" = {
    subscription = "np"
    environment  = "dev"
    usecase      = "test"
    location     = "westeurope"
  },

  "rg2" = {
        subscription = "np"
        environment  = "dev"
        usecase      = "test2"
        location     = "westeurope"
    }
}

#------------------------------------------------------------------