task :environment do
  require_relative './environment'
end

task :console => [:environment] do
  Pry.start
end

namespace :db do
  task :migrate => [:environment] do 
    require_relative './migrations/01_create_users'
    require_relative './migrations/02_create_posts'
    # CreateUsers.migrate(:up)
    CreatePosts.migrate(:up)
  end

end