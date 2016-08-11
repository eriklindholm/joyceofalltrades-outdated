class ProjectTag < ApplicationRecord
  
  has_many :project_taggings
  has_many :projects, through: :project_taggings


  def self.cleanup
    #TODO delete unused tags
  end

end
