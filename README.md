# 🔧 infra-scripts

Bash scripts for automating AWS cloud infrastructure tasks, server management, and backups.  
Created for real-world use in DevOps workflows and small-scale production systems.

---

## 📁 Included Scripts

### `ec2-start-stop.sh`
Start or stop AWS EC2 instances by instance ID or tag.

### `backup-postgres.sh`
Creates a PostgreSQL database dump and uploads it to an S3 bucket.

### `vpn-connector.sh`
Connects to a remote network via Twingate or OpenVPN (optional).

---

## 🛠️ Requirements
- AWS CLI configured
- IAM permissions for EC2, S3
- Bash 4+, curl, jq
- psql (for DB backup)

---

## 🚀 How to Use
```bash
chmod +x ec2-start-stop.sh
./ec2-start-stop.sh start i-xxxxxxxxxxxx




## 🧠 Author

**Abhilash Makode**  
Cloud & DevOps Engineer | AWS | Linux | CI/CD  
📧 abhi.mack3@gmail.com  
🔗 [GitHub](https://github.com/abmackk)  
