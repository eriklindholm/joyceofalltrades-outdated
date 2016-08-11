class Project < ApplicationRecord

  enum layout: ['formal', 'freeflow']

  mount_uploader :main_image, ProjectImageUploader
  mount_uploader :teaser_image, ProjectTeaserImageUploader

  has_many :project_taggings
  has_many :project_tags, through: :project_taggings

  has_many :project_images


  def tags
    project_tags.pluck(:name).join ', '
  end

  def tags= val
    project_taggings.delete_all
    (val || '').split(',').each do |tag|
      add_tag tag
    end
    ProjectTag.cleanup
  end

  def add_tag name
    project_tags << ProjectTag.find_or_create_by(name: name.strip)
  end

end
