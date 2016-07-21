class ProjectImage < ApplicationRecord
  
  mount_uploader :image, ProjectImageUploader

  belongs_to :project

end
