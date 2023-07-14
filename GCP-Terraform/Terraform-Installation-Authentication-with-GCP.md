# Terraform Installation on Windows Machine
**Reference Video Link:**

Navigate below steps to install terraform on windows machine:
- Go to "https://developer.hashicorp.com/terraform/downloads" -> Choose Operating system "Windows" -> download "386" binary for windows
- Go to downloads and unzip it and configure the environment path variable for terraform as shown below:

  Search for "edit system environment variables" in local machine and navigate "Environment Variables ->  user variables -> new -> add  "variable name -> terraform, "variable value" -> terraform.exec file path
  and click on apply and ok.
  
  ![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/9503fdd5-dc78-44c6-964c-8eab63be8409)

  ![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/2e395f26-c06f-437e-a8c3-eb2f8a6c2446)

  ![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/c8a8f185-44bb-49f4-a047-ea9c76ab4515)

  ![image](https://github.com/zero2heroeasy/GCP-Cloud/assets/138552899/2022d619-b3e1-43bf-9bb6-bda78e40e586)

  Verify terraform verson from cmd > terraform version

# Authenticate GCP Cloud from Windows machine:

1.**With Username and password**

  **Step-1:** Run below command from powershell with administrator mode to Enable cloud sdk (gcloud cli):

  > (New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe", "$env:Temp\GoogleCloudSDKInstaller.exe") & $env:Temp\GoogleCloudSDKInstaller.exe

  > Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
  
  Update gcloud sdk path in environment variables as like terraform path
  
  **Navigation:**
  
  Search for "edit system environment variables" in local machine and navigate "Environment Variables ->  user variables -> new -> add  "variable name -> gcloud-cli, "variable value" -> "C:\Program Files (x86)\Google\Cloud SDK\google-cloud-sdk\bin" and apply.

  From the VS terminal run below command to authenticate with username/password:

  > gcloud auth application-default login
  
  It will open a pop up from browser to login with username and password for your cloud account. Approve it and you can now able to run terraform snippet to create resources on GCP cloud
  
  **Example:** 
  Create a Cloud storage bucket with username & password authentication process
  
  Code: https://github.com/zero2heroeasy/GCP-Cloud/blob/main/GCP-Terraform/bucket-creation-with-username-password-authentication.tf
  
2.**With Service Account:**
- Create a Service account on GCP Cloud Project
- Create new key and update in terraform-code

  Code: https://github.com/zero2heroeasy/GCP-Cloud/blob/main/GCP-Terraform/bucket-creation-with-service-account-authentication.tf
- Run Terraform plan & apply

**References-links:**
- https://cloud.google.com/sdk/docs/install#windows
- https://registry.terraform.io/providers/hashicorp/google/latest/docs


  
