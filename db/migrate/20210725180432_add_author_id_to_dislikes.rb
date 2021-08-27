class AddAuthorIdToDislikes < ActiveRecord::Migration[6.1]
  def change
    add_reference :dislikes, :author, null: false, foreign_key: true
  end
end
