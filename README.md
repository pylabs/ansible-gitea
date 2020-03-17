gitea
=======

Install gitea system 

Role Variables
--------------

```yaml
gitea_domain_name: GITEA_DOMAIN_NAME
gitea_version: GITEA_VERSION_NUMBER
gitea_db_user: GITEA_DB_USER
gitea_db_password: GITEA_DB_PASSWORD
gitea_db_name: GITEA_DB_NAME
```

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - role: pylabs.gitea
  vars:
     gitea_domain_name: gitea.example.com
     gitea_version: "1.10.2"
     gitea_db_user: gitea
     gitea_db_password: giteapa$$w0rd
     gitea_db_name: gitea
```

License
-------

MIT

Author Information
------------------

William Wu
