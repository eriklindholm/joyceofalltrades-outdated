class CreatePlays < ActiveRecord::Migration[5.0]
  def change
    create_table :plays do |t|
      t.string :name
      t.string :tagline
      t.string :teaser_image
      t.string :main_image
      t.text :body

      t.timestamps
    end
  end
end
