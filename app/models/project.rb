class Project < ApplicationRecord

  enum layout: ['formal', 'freeflow']

  mount_uploader :main_image, ProjectImageUploader
  mount_uploader :teaser_image, ProjectTeaserImageUploader

  has_many :project_tags
  has_many :tags, through: :project_tags

  has_many :project_images

end
