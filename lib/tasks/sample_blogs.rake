task seed_blogs: :environment do

  Blog.create!(
    name: 'How we designed a coffee shop',
    url_alias: 'coffee shop',
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
    teaser_type: 'with_introduction',
    tags: 'tag 1, tag 2'
  )

  Blog.create!(
    name: 'Retro vibes on the UEA Sport courts',
    url_alias: 'Retro vibes on the UEA Sport courts',
    tagline: 'Collaborating with XYZ we brought sexy back to the UEA Sportspark',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'standard',
    tags: 'taggin 3, second'
  )

  Blog.create!(
    name: 'Retro vibes on the UEA Sport courts',
    url_alias: 'Retro vibes on the UEA',
    tagline: 'Collaborating with XYZ we brought sexy back to the UEA Sportspark',
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'standard',
    tags: 'a blog'
  )

  Blog.create!(
    name: 'Sounds for the weekend',
    url_alias: 'Sounds for the weekend',
    tagline: 'Lorem ipsum Occaecat aliqua commodo magna labore nulla dolor anim fugiat anim occaecat amet est cupidatat reprehenderit velit laboris sint cupidatat in.',
    teaser_image: File.open(Rails.root + 'seeds/image_with_title.jpg'),
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'image_with_title',
    tags: 'tag 1, taggin 3'
  )

  Blog.create!(
    name: 'Work Number 5',
    url_alias: 'Work Number 5',
    tagline: 'Lorem ipsum Oet est cupidatat reprehenderit velit laboris sint cupidatat in.',
    teaser_image: File.open(Rails.root + 'seeds/image_only.jpg'),
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: '<p>Lorem ipsum Labore magna ullamco ea reprehenderit Excepteur sint in eu fugiat quis velit proident ex amet Ut sint culpa nisi quis officia sunt exercitation Duis sed do sint sint velit reprehenderit Excepteur consectetur sit sunt minim.</p>',
    teaser_type: 'image_only',
    tags: 'a blog'
  )


end

