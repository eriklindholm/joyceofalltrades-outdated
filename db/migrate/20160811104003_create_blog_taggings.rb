class CreateBlogTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_taggings do |t|

      t.references :blog
      t.references :blog_tag

      t.timestamps
    end
  end
end
