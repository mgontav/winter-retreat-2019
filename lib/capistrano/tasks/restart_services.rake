# frozen_string_literal: true

desc 'Restart puma service'
task :restart_puma do
  on roles(:app) do
    execute 'sudo /bin/systemctl restart puma'
  end
end

desc 'Restart nginx service'
task :restart_nginx do
  on roles(:app) do
    execute 'sudo /bin/systemctl restart nginx'
  end
end

after 'deploy:published', 'restart_puma'
after 'deploy:published', 'restart_nginx'
