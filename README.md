# IMPORTANT TIPS to RUN:
1) Export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
2) change your direct path to ansible-playbook folder in local-exec module
3) When `terraform apply` is executing ansible playbook (local-exec module) - tap `yes` for fingerprint to estabilishing connection
4) Script, dockerfile and docker-compose files are located in ansible/data folder