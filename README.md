# Terraform Tutorial

In this hands-on tutorial, we use Terraform to launch a Google Cloud VM and deploy a Hello World Flask app.

The tutorial is from the Cloud and Machine Learning course taught by Professor I-Hsin Chung and Eun Kyung Lee (NYU Courant Fall 25).

## 📁 Directory Layout
* `main.tf`: Terraform configuration file that lists/defines the cloud resources we want to provision.
* `app.py`: Flask app code. After the VM is created, copy code to the VM and run the server.

## 🚀 Tutorial Steps
1. Configure `gcloud`
```bash!
gcloud auth application-default login
```

2. Initialize Terraform (per working directory) 

Creates `.terraform.lock.hcl`, which contains provider/version info.

```bash!
terraform init
```

3. Format Terraform files

Auto-formats `.tf` files to canonical style. Fix indentation, spacing, etc. as expected.

```bash!
terraform fmt
```

4. Preview changes
```bash!
terraform plan
```

5. Apply changes
```bash!
terraform apply -auto-approve
```

6. SSH into the VM and run Flask app

```bash!
# Install Python/Flask
sudo apt-get update
sudo apt-get install -y python3 python3-pip
python3 -m pip install --upgrade pip
python3 -m pip install flask

# Create app.py and copy code
vim app.py

# Run app
python3 app.py
```

7. Get URL and test from local
```bash!
terraform output -raw Web-server-URL
curl "$(terraform output -raw Web-server-URL)"
```

8. Clean up
```bash!
terraform destroy -auto-approve
```
