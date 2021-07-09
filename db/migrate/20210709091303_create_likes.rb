class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :story, null: false, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
