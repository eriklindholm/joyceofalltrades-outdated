task seed_blogs: :environment do

  Blog.create!(
    name: 'How we designed a coffee shop',
    tagline: 'Behind the scenes of the Artel Store Branding',
    teaser_text: 'A short paragraph to introduce the project. A short paragraph to introduce the project. A short paragraph to introduce the',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>I like the lightness of this place a lot. Small spaces like this will look way more spacious
        when everything is kept in light colors, especially the walls. I’m very tempted to paint
        a wall in our apartment grey or maybe Im more courages and pick petrol blue or dark
        green?) but always think it might make our place look smaller. Maybe one day I’ll go for
        it, but looking at this place, it doesn’t seem bad at all to keep them white for a little
        while longer. I like the lightness of this place a lot. Small spaces like this will look way
        more spacious when everything is kept in light colors, especially the walls. I’m very</p>',
    teaser_type: 'with_introduction'
  )

  Blog.create!(
    name: 'Retro vibes on the UEA Sport courts',
    tagline: 'Collaborating with XYZ we brought sexy back to the UEA Sportspark',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'standard'
  )

  Blog.create!(
    name: 'Retro vibes on the UEA Sport courts',
    tagline: 'Collaborating with XYZ we brought sexy back to the UEA Sportspark',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'standard'
  )

  Blog.create!(
    name: 'Sounds for the weekend',
    tagline: 'Lorem ipsum Occaecat aliqua commodo magna labore nulla dolor anim fugiat anim occaecat amet est cupidatat reprehenderit velit laboris sint cupidatat in.',
    teaser_image: File.open(Rails.root + 'seeds/image_with_title.jpg'),
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'image_with_title'
  )

  Blog.create!(
    name: 'Work Number 5',
    tagline: 'Lorem ipsum Oet est cupidatat reprehenderit velit laboris sint cupidatat in.',
    teaser_image: File.open(Rails.root + 'seeds/image_only.jpg'),
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'image_only'
  )


end

