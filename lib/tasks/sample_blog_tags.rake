task seed_blog_tags: :environment do

  BlogTag.create!(blog_id: 1, tag_id: 1)
  BlogTag.create!(blog_id: 1, tag_id: 3)
  BlogTag.create!(blog_id: 1, tag_id: 5)
  
  BlogTag.create!(blog_id: 2, tag_id: 1)
  BlogTag.create!(blog_id: 2, tag_id: 7)

  BlogTag.create!(blog_id: 3, tag_id: 6)
  BlogTag.create!(blog_id: 3, tag_id: 7)
  
  BlogTag.create!(blog_id: 4, tag_id: 3)
  BlogTag.create!(blog_id: 4, tag_id: 4)
  BlogTag.create!(blog_id: 4, tag_id: 5)
  
  BlogTag.create!(blog_id: 5, tag_id: 2)

end

