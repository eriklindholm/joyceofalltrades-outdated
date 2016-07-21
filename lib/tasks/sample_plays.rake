task seed_plays: :environment do

  Play.create!(
    name: 'How we designed a coffee shop',
    tagline: 'Behind the scenes of the Artel Store Branding',
    teaser_image: File.open(Rails.root + 'seeds/play_teaser_1.png'),
    main_image: File.open(Rails.root + 'seeds/play.jpg'),
    body: 'Lorem ipsum Minim commodo dolore ut consectetur cupidatat consectetur veniam pariatur consectetur elit tempor nulla minim aliqua eiusmod pariatur occaecat elit eu aliquip eu proident ea cillum mollit Ut amet nulla ullamco consequat irure culpa do nostrud Excepteur in irure amet non.'
    )
  Play.create!(
    name: 'A glimpse into a blind girl world',
    tagline: 'Working with FostenDoc to turn an idea into a whimsical film project.',
    teaser_image: File.open(Rails.root + 'seeds/play_teaser_2.png'),
    main_image: File.open(Rails.root + 'seeds/play.jpg'),
    body: 'Lorem ipsum Minim commodo dolore ut consectetur cupidatat consectetur veniam pariatur consectetur elit tempor nulla minim aliqua eiusmod pariatur occaecat elit eu aliquip eu proident ea cillum mollit Ut amet nulla ullamco consequat irure culpa do nostrud Excepteur in irure amet non.'
    )
  Play.create!(
    name: 'Painting walls',
    tagline: 'Tackling the walls of Norwich',
    teaser_image: File.open(Rails.root + 'seeds/play_teaser_3.png'),
    main_image: File.open(Rails.root + 'seeds/coffee_shop.jpg'),
    body: 'Lorem ipsum Minim commodo dolore ut consectetur cupidatat consectetur veniam pariatur consectetur elit tempor nulla minim aliqua eiusmod pariatur occaecat elit eu aliquip eu proident ea cillum mollit Ut amet nulla ullamco consequat irure culpa do nostrud Excepteur in irure amet non.'
    )

end