task seed_tags: :environment do

  BlogTag.create!(name: 'Image Making')
  BlogTag.create!(name: 'Tutorials')
  BlogTag.create!(name: 'Inteviews')
  BlogTag.create!(name: 'Soundtracks')
  BlogTag.create!(name: 'Photoessays')
  BlogTag.create!(name: 'Creative Writing')
  BlogTag.create!(name: 'Archive')


  Project.project_addTag()
  ProjectTag.create!(name: 'Branding')
  ProjectTag.create!(name: 'Print')
  ProjectTag.create!(name: 'Digital')
  ProjectTag.create!(name: 'Art decoration')
  ProjectTag.create!(name: 'Image making')

end

