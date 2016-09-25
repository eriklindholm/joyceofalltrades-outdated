task seed_projects: :environment do

  x = Project.create!(
    name: 'Artel',
    url_alias: 'Artel',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'coffee shop',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    teaser_image: File.open(Rails.root + 'seeds/coffee_teaser.jpg'),
    tags: 'Branding, Print'
    )
  x.project_images.create!(image: File.open(Rails.root + 'seeds/freeflow_1.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/freeflow_2.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/freeflow_3.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/artelBC.jpg'))

  x = Project.create!(
    name: 'The Well',
    url_alias: 'The Well',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Spa Magazine',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'freeflow',
    tags: 'Print, Digital'
    )
  x.project_images.create!(image: File.open(Rails.root + 'seeds/freeflow_1.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/freeflow_2.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/freeflow_3.jpg'))

  Project.create!(
    name: 'CD2',
    url_alias: 'CD2',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Website',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    tags: 'Digital, Image Making'
    )

  Project.create!(
    name: 'Making Mountains',
    url_alias: 'Making Mountains',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'iPad text book',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    tags: 'Branding'
    )

  x = Project.create!(
    name: 'Fine Art Catalogue',
    url_alias: 'Fine Art Catalogue',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Degree Publication',
    main_image: File.open(Rails.root + 'seeds/fine_art/FA_banner.jpg'),
    layout: 'formal',
    tags: 'Print, Digital, Art decoration, Image making'
    )
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA1.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA2.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA3.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA4.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA5.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA6.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/fine_art/FA7.jpg'))

  Project.create!(
    name: 'The Unique Mind of Alexandra Mackie',
    url_alias: 'The Unique Mind of Alexandra Mackie',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Degree Publication',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal'
    )

  x = Project.create!(
    name: 'NeaLee',
    url_alias: 'neelee',
    body: '<p>NeeLee</p>',
    product: 'Degree Publication',
    main_image: File.open(Rails.root + 'seeds/nealee/NL_Front.jpg'),
    layout: 'freeflow'
    )
  x.project_images.create!(image: File.open(Rails.root + 'seeds/nealee/NL_Back.jpg'))
  x.project_images.create!(image: File.open(Rails.root + 'seeds/nealee/NL_Inside.jpg'))

  x = Project.create!(
    name: 'SPD',
    url_alias: 'spd',
    body: '<p>SPD</p>',
    product: 'Degree Publication',
    main_image: File.open(Rails.root + 'seeds/spd/SPD_1.jpg'),
    layout: 'formal'
    )
  x.project_images.create!(image: File.open(Rails.root + 'seeds/spd/SPD2.jpg'))

end

