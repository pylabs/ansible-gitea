gitea
=======

Install gitea system 

Role Variables
--------------

```yaml
gitea_version: GITEA_VERSION_NUMBER
```

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - role: pylabs.gitea
  vars:
     gitea_version: "1.10.2"
```

License
-------

MIT

Author Information
------------------

William Wu
