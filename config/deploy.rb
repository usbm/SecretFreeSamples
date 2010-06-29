set :application, "secretfreesamples"
set :repository,  "git@github.com:usbm/SecretFreeSamples.git"

set :deploy_to, '/home/rails/public_html/secretfreesamples'

set :user, 'rails'
set :scm, :git
set :deploy_via, :remote_cache
set :use_sudo, false

role :web, "secretfreesamples.bsgbeta.com"                          # Your HTTP server, Apache/etc
role :app, "secretfreesamples.bsgbeta.com"                          # This may be the same as your `Web` server
role :db,  "secretfreesamples.bsgbeta.com", :primary => true # This is where Rails migrations will run

namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end

namespace :bundler do
  task :create_symlink, :roles => :app do
    shared_dir = File.join(shared_path, 'bundle')
    release_dir = File.join(current_release, '.bundle')
    run("mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}")
  end
 
  task :bundle_new_release, :roles => :app do
    bundler.create_symlink
    run "cd #{release_path} && bundle check 2>&1 > /dev/null ; if [ $? -ne 0 ] ; then sh -c 'bundle install --without test' ; fi"
  end
end
 
after 'deploy:update_code', 'bundler:bundle_new_release'