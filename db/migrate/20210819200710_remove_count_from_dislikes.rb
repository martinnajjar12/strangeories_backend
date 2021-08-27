class RemoveCountFromDislikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :dislikes, :count, :integer
  end
end
