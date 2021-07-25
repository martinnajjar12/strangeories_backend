class AddAuthorIdToStories < ActiveRecord::Migration[6.1]
  def change
    add_reference :stories, :author, null: false, foreign_key: true
  end
end
