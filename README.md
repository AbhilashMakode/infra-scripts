# 🔧 infra-scripts

Bash scripts for automating AWS infrastructure operations, PostgreSQL database backups, and VPN connectivity.  
These scripts are built for real-world usage in DevOps workflows, especially for small to medium-scale cloud setups.

---

## 📁 Included Scripts

### `ec2-start-stop.sh`
Start or stop EC2 instances by instance ID or tag using AWS CLI.

### `backup-postgres.sh`
Take a dump of a PostgreSQL database and upload it to an S3 bucket (with timestamped naming).

### `vpn-connector.sh`
Connects to a private network using OpenVPN or Twingate (can be extended for cloud deployments).

---

## 🛠️ Requirements

- AWS CLI configured (`aws configure`)
- Valid IAM user with permissions (EC2, S3)
- Bash 4+ installed
- `psql` for PostgreSQL backups
- `jq` for JSON parsing (used in some scripts)
- OpenVPN or Twingate CLI (if using VPN scripts)

---

## 🚀 How to Use

```bash
# Make the script executable
chmod +x ec2-start-stop.sh

# Example usage
./ec2-start-stop.sh start i-0123456789abcdef0
./backup-postgres.sh mydb mybucket-name
```

---

## 🧠 Author

Abhilash Makode  
📧 abhilash.makode@outlook.com  
🔗 [GitHub – AbhilashMakode](https://github.com/AbhilashMakode)  
📂 [Repo Link](https://github.com/AbhilashMakode/infra-scripts/)
