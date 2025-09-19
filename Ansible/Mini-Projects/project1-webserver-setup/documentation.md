# Project1 – Web Server Setup (Terraform + Ansible on AWS)

## 📌 Objective
Provision an AWS EC2 instance using **Terraform** and configure an **Apache web server** using **Ansible**.  
The server should serve a custom `index.html` page.

---

## 📂 Folder Architecture

project1-webserver-setup/
│── .env
│── README.md
│
│── terraform/
│ ├── provider.tf
│ ├── variables.tf
│ ├── main.tf
│ └── outputs.tf
│
│── ansible/
│ ├── inventory.ini
│ ├── playbook.yml
│ └── roles/
│ └── webserver/
│ ├── tasks/
│ │ └── main.yml
│ └── templates/
│ └── index.html.j2
│
│── deploy.sh (optional wrapper script)


---

## ⚙️ Prerequisites
- AWS account with an existing key pair (`my-key-pair`)
- AWS CLI configured (`aws configure`)
- Terraform installed (`>= 1.5`)
- Ansible installed (`>= 2.14`)
- SSH private key saved locally (`~/.ssh/my-key-pair.pem`)

---

## 🔐 `.env` file
Keep AWS region and key name here:

```bash
AWS_REGION=ap-south-1
AWS_KEY_NAME=my-key-pair

export $(grep -v '^#' .env | xargs)
