PostgreSQL
=========

Installs PostgreSQL on a Debian-based machine.

Role Variables
--------------

| Variable name             | Type   | Default                              |
|---------------------------|--------|--------------------------------------|
| `postgresql_admin_user`   | String | `postgres`                           |
| `postgresql_users`        | String | `[]`                                 |

Example Playbook
----------------

    - hosts: all
      roles:
         - postgresql

License
-------

MIT

Author Information
------------------

Pedro Janeiro
Whitesmith
