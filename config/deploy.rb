set :application, "invfriend"
set :deploy_to, "/User/juarinu/Sites/rails_apps/#{application}"
set :use_sudo, false

role :web, "invfriend.local"                          # Your HTTP server, Apache/etc
role :app, "invfriend.local"                          # This may be the same as your `Web` server
role :db,  "invfriend.local", :primary => true        # This is where Rails migrations will run

default_run_options[:pty] = true
set :repository, "git@github.com:juarinu/Invisible-Friend.git"
set :smc, "git"

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
  desc "Start Application -- not needed for Passenger"
  task :start, :roles => :app do
    # nothing -- need to override default cap start task when using Passenger
  end
end