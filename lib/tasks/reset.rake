task reset_all: :environment do
  
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['seed'].invoke

end

task seed: :environment do

  Rake::Task['db:migrate'].invoke

  Rake::Task['seed_blogs'].invoke
  Rake::Task['seed_tags'].invoke
  Rake::Task['seed_blog_tags'].invoke
  Rake::Task['seed_projects'].invoke

end