# Ansible-infrastructure
Testing ansible with elk, prometheus, nginx

# Dependencies
Ansible, Vagrant, VirtualBox

# Infrastructure
- Nginx-Webserver: 192.168.60.2:80
- Nginx-Caching Proxy: 192.168.60.3:443
- ELK: 192.168.60.5:5601
- Prometheus: 192.168.60.4:9090

# Setup
ansible-playbook main.yml
