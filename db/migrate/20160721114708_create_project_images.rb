class CreateProjectImages < ActiveRecord::Migration[5.0]
  def change
    create_table :project_images do |t|
      t.string :image
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
