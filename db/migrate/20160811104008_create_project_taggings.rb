class CreateProjectTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :project_taggings do |t|

      t.references :project
      t.references :project_tag

      t.timestamps
    end
  end
end
