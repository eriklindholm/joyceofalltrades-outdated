class ProjectTagging < ApplicationRecord

  belongs_to :project
  belongs_to :project_tag

end
