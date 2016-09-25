class CreateEnquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :contact
      t.text :body

      t.timestamps
    end
  end
end
