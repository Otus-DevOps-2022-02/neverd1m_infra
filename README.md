# neverd1m_infra

# Oneline ssh connect
ssh -A -t appuser@51.250.72.199 'ssh appuser@10.128.0.5'

# jump over bastion host
# ~/.ssh/config

Host 51.250.72.199
  HostName 51.250.72.199
  User appuser

Host someinternalhost
  HostName 10.128.0.5
  User appuser
  ProxyJump 51.250.72.199

# Variables
bastion_IP = 51.250.72.199
someinternalhost_IP = 10.128.0.5

#Let's Encrypt endpoint
https://51.250.72.199.nip.io/
