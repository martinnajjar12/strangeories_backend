class AddUserIpAddressToDislike < ActiveRecord::Migration[6.1]
  def change
    add_column :dislikes, :user_ip, :string
  end
end
