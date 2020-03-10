gitea
=======

Install gitea system 

Role Variables
--------------

```yaml
gitea_version: GITEA_VERSION_NUMBER
gitea_domain_name: GITEA_DOMAIN_NAME
```

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - role: pylabs.gitea
  vars:
     gitea_version: "1.10.2"
     gitea_domain_name: "gitea.example.com"
```

License
-------

MIT

Author Information
------------------

William Wu
