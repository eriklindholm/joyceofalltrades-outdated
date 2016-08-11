class BlogTag < ApplicationRecord

  has_many :blog_taggings
  has_many :blogs, through: :blog_taggings

  def self.cleanup
    #TODO delete unused tags
  end

end
