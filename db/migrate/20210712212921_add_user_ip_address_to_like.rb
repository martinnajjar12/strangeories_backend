class AddUserIpAddressToLike < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :user_ip, :string
  end
end
