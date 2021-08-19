class RemoveUserIpFromDislikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :dislikes, :user_ip, :string
  end
end
