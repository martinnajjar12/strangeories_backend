class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
