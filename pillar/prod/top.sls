base:
  '*':
    - consul
    - firewall.consul
    - networking
    - roles
    - secrets.system-mail
    - sudoers
    - tls
    - users

  'backup-server':
    - match: nodegroup
    - backup.server

  'cdn-logs':
    - match: nodegroup
    - fastly-logging
    - firewall.fastly-logging

  'docs':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.docs
    - secrets.docs
    - secrets.backup.docs

  'downloads':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.downloads
    - secrets.backup.downloads

  'loadbalancer':
    - match: nodegroup
    - haproxy
    - firewall.loadbalancer
    - ocsp
    - secrets.fastly
    - secrets.tls.certs.loadbalancer

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - secrets.dyn
