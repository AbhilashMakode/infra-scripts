# 🔧 infra-scripts

Bash scripts for automating AWS infrastructure operations, PostgreSQL database backups, server maintenance, and VPN connectivity.  
These scripts are built for real-world usage in DevOps workflows and small-to-medium-scale cloud setups.

---

## 📁 Included Scripts

| Script                    | Description |
|---------------------------|-------------|
| `ec2-start-stop.sh`       | Start or stop EC2 instances using AWS CLI |
| `backup-postgres.sh`      | Dump PostgreSQL DB and upload to S3 |
| `vpn-connector.sh`        | Connect to a VPN using OpenVPN or Twingate |
| `update-env.sh`           | Add/update `.env` variable in a file |
| `rotate-logs.sh`          | Rotate and rename log files with timestamps |
| `disk-usage-report.sh`    | Show disk usage of specified directories |

---

## 🛠️ Requirements

- AWS CLI configured (`aws configure`)
- Valid IAM user with permissions (EC2, S3)
- Bash 4+ installed
- `psql` for PostgreSQL backups
- `jq` for JSON parsing (used in some scripts)
- `openvpn` installed (for VPN scripts)

---

## 🚀 How to Use

```bash
# Make a script executable
chmod +x ec2-start-stop.sh

# Start or stop EC2 instance
./ec2-start-stop.sh start i-0123456789abcdef0

# Backup PostgreSQL and upload to S3
./backup-postgres.sh mydb mybucket-name

# Update or insert env variable
./update-env.sh .env.production API_KEY=abcdef12345

# Rotate a log file
./rotate-logs.sh /var/log/app.log

# Report disk usage for folders
./disk-usage-report.sh /home /var

# Connect to VPN
./vpn-connector.sh /path/to/config.ovpn
```

---

## 🧠 Author

Abhilash Makode  
📧 abhilash.makode@outlook.com  
🔗 [GitHub – AbhilashMakode](https://github.com/AbhilashMakode)  
📂 [Repo Link](https://github.com/AbhilashMakode/infra-scripts/)
