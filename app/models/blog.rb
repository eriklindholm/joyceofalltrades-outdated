class Blog < ApplicationRecord

  enum teaser_type: ['standard', 'with_introduction', 'image_only', 'image_with_title']

  mount_uploader :image, BlogImageUploader
  mount_uploader :teaser_image, BlogTeaserImageUploader

  has_many :blog_tags
  has_many :tags, through: :blog_tags


  def previous_blog
    self.class.where("created_at < ?", created_at).order("created_at desc").first
  end

  def next_blog
    self.class.where("created_at > ?", created_at).order("created_at asc").first
  end



end
