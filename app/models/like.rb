class Like < ApplicationRecord
  cattr_accessor :current_ip

  validate :count_scoped_to_story_and_user_ip_address
  belongs_to :story

  def count_scoped_to_story_and_user_ip_address
    if Story.current.likes.where(user_ip == Like.current_ip.to_json).exists?
      errors.add(:like_id, 'You have already disliked this story!')
    end
  end
end
