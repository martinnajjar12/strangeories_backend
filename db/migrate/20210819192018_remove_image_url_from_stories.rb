class RemoveImageUrlFromStories < ActiveRecord::Migration[6.1]
  def change
    remove_column :stories, :image_url, :string
  end
end
