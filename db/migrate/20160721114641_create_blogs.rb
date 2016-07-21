class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :body
      t.string :main_image
      t.string :tagline

      #standard_teaser
      #with_introduction
      #image_only
      #image_with_title
      t.integer :teaser_type, default: 0

      t.string :teaser_text
      t.string :teaser_intro
      t.string :teaser_image

      t.timestamps
    end
  end
end
