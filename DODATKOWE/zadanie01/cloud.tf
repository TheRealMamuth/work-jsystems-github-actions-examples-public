terraform { 
  cloud { 
    
    organization = "szkolenie_terraform_pk" 

    workspaces { 
      name = "piotr_koska_gha" 
    } 
  } 
}
