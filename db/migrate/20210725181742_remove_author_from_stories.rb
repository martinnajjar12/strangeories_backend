class RemoveAuthorFromStories < ActiveRecord::Migration[6.1]
  def change
    remove_column :stories, :author, :string
  end
end
