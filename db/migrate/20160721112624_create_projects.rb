class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :body
      t.string :product
      t.string :main_image
      t.string :teaser_image

      #formal
      #freeflow
      t.integer :layout, default: 0

      t.string :url_alias

      t.timestamps
    end
  end
end
