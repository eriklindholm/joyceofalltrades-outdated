class Blog < ApplicationRecord

  enum teaser_type: ['standard', 'with_introduction', 'image_only', 'image_with_title']

  mount_uploader :main_image, BlogImageUploader
  mount_uploader :teaser_image, BlogTeaserImageUploader

  has_many :blog_taggings
  has_many :blog_tags, through: :blog_taggings

  validates :name, :url_alias, presence: true

  def tags sep=', '
    blog_tags.pluck(:name).join sep
  end

  include FriendlyId
  friendly_id :url_alias


  def tags= val
    blog_taggings.delete_all
    (val || '').split(',').each do |tag|
      add_tag tag
    end
    BlogTag.cleanup
  end

  def add_tag name
    blog_tags << BlogTag.find_or_create_by(name: name.strip)
  end



  def previous_blog
    self.class.where("created_at < ?", created_at).order("created_at desc").first
  end

  def next_blog
    self.class.where("created_at > ?", created_at).order("created_at asc").first
  end


  def url_alias= val
    super val.to_s.parameterize
  end

end
