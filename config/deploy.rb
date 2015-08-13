require 'mina/bundler'
require 'mina/git'
require 'mina/rbenv'

set :repository, 'git@github.com:hermanzdosilovic/random-open-source-wallpaper.git'
set :branch, 'master'

set :user, 'pi'
set :domain, 'rosw.ddns.net'
set :deploy_to, '/var/www/random-open-source-wallpaper'
set :port, '22219'
set :forward_agent, true

desc "Deploys the current version to the server."
task deploy: :environment do
  deploy do
    invoke :'git:clone'
    invoke :'bundle:install'
    invoke :'deploy:cleanup'

    to :launch do
      queue "mkdir -p #{deploy_to}/#{current_path}/tmp/"
      queue "touch #{deploy_to}/#{current_path}/tmp/restart.txt"
    end
  end
end

task :environment do
  invoke :'rbenv:load'
end
