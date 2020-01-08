NGINX
=========

Installs NGINX on a Debian-based machine.

Role Variables
--------------

| Variable name      | Type   | Default                              |
|--------------------|--------|--------------------------------------|
| `nginx_base_dir`   | String | `/etc/nginx`                         |
| `nginx_sites_dir`  | String | `"{{nginx_base_dir}}/sites-enabled"` |
| `nginx_config_dir` | String | `"{{nginx_base_dir}}/conf.d"`        |
| `nginx_user`       | String | root                                 |

Example Playbook
----------------

    - hosts: all
      roles:
         - nginx

License
-------

MIT

Author Information
------------------

Pedro Janeiro
Whitesmith
