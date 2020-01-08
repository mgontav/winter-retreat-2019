# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.11.1'

set :application, 'retreat'
set :repo_url, 'git@github.com:pjaneiro/winter-retreat-2019.git'
set :rails_env, 'production'
set :migration_role, :app
set :linked_files, %w[config/master.key]
set :linked_dirs, %w[storage tmp/pids]
set :ssh_options,
    keys: %w[provisioning/ssh_keys/id_rsa],
    forward_agent: true
