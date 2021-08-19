class RemoveUserIpFromLikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :user_ip, :string
  end
end
