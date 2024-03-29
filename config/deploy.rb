set :application, "spreecommerce"
set :repository,  "git@bitbucket.org:rmedinap/spreecommerce.git"

#set :deploy_via, :remote_cache
set :branch, "master"
set :ssh_options, { :forward_agent => true }
set :user, "spree"

set :deploy_to, "/home/#{user}/apps/#{application}"
set :use_sudo, false

#server "w3casts.com", :web, :app, :db, primary: true
server "yupiyap.cristiancastillo.com", :web, :app, :db, primary: true

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

require "bundler/capistrano"
require 'capistrano-unicorn'

require "capistrano-rbenv"
set :rbenv_ruby_version, "1.9.3-p392"

after "deploy", "deploy:cleanup" # keep only the last 5 releases

after "deploy:setup", "deploy:setup_config"
after "deploy:finalize_update", "deploy:symlink_config"
after "deploy", "unicorn:restart"
before "deploy", "deploy:check_revision"

namespace :deploy do

  task :setup_config, roles: :app do
    run "mkdir -p #{shared_path}/config"
    run "mkdir -p #{shared_path}/uploads"
    run "mkdir -p #{shared_path}/spree"
    put File.read("config/nginx.conf"), "#{shared_path}/config/nginx.conf"
    sudo "ln -nfs #{shared_path}/config/nginx.conf /etc/nginx/sites-enabled/#{application}"
    put File.read("config/database.example.yml"), "#{shared_path}/config/database.yml"
    puts "Now edit the config files in #{shared_path}."
    sudo "service nginx restart"
    #poniendo unicorn en el init.d para inicio automatico
    put File.read("config/unicorn_init.sh"), "#{shared_path}/config/unicorn_init.sh"
    sudo "cp #{shared_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}"
    sudo "chmod +x /etc/init.d/unicorn_#{application}"
    sudo "update-rc.d unicorn_#{application} defaults"
  end

  task :symlink_config, roles: :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/uploads #{release_path}/public/uploads"
    run "ln -nfs #{shared_path}/presentaciones #{release_path}/presentaciones"
    run "ln -nfs #{shared_path}/spree #{release_path}/public/spree"
  end

  desc "Make sure local git is in sync with remote."
  task :check_revision, roles: :web do
    unless `git rev-parse HEAD` == `git rev-parse origin/#{branch}`
      puts "WARNING: HEAD is not the same as origin/#{branch}"
      puts "Run `git push` to sync changes."
      exit
    end
  end

end
