task seed_projects: :environment do

  Project.create!(
    name: 'Artel',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'coffee shop',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    teaser_image: File.open(Rails.root + 'seeds/coffee_teaser.jpg'),
    tags: 'Branding, Print'
    )

  x = Project.create!(
    name: 'The Well',
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
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Website',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    tags: 'Digital, Image Making'
    )

  Project.create!(
    name: 'Making Mountains',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'iPad text book',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    tags: 'Branding'
    )

  Project.create!(
    name: 'Fine Art Catalogue',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Degree Publication',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal',
    tags: 'Print, Digital, Art decoration, Image making'
    )

  Project.create!(
    name: 'The Unique Mind of Alexandra Mackie',
    body: '<p>Branding a little coffee shop on Wensum Street in Norwich. We created a modular Visual Identity including its own set of letter forms, creating a unique and quirky shop experience.</p>',
    product: 'Degree Publication',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    layout: 'formal'
    )

end

