class AddAuthorIdToLikes < ActiveRecord::Migration[6.1]
  def change
    add_reference :likes, :author, null: false, foreign_key: true
  end
end
