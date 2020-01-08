Ruby
=========

Installs RVM and Ruby on a Debian-based machine.

Role Variables
--------------

| Variable name              | Type   | Default                                                                                |
|----------------------------|--------|----------------------------------------------------------------------------------------|
| `rvm_url`                  | String | `https://get.rvm.io`                                                                   |
| `rvm_temp_installer_path`  | String | `/tmp/rvm-installer.sh`                                                                |
| `rvm_default_ruby_version` | String | `ruby-2.5.1`                                                                           |
| `rvm_root`                 | String | `/usr/local/rvm`                                                                       |
| `rvm_gpg_key_server`       | String | `hkp://keys.gnupg.net`                                                                 |
| `rvm_gpg_keys`             | String | `[409B6B1796C275462A1703113804BB82D39DC0E3, 7D2BAF1CF37B13E2069D6956105BD0E739499BDB]` |

Example Playbook
----------------

    - hosts: all
      roles:
         - ruby

License
-------

MIT

Author Information
------------------

Pedro Janeiro
Whitesmith
