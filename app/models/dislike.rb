class Dislike < ApplicationRecord
  cattr_accessor :current_ip

  validate :count_scoped_to_story_and_user_ip_address
  belongs_to :story

  def count_scoped_to_story_and_user_ip_address
    errors.add(:dislike_id, 'You have already disliked this story!') if Story.current.dislikes
      .where(user_ip == Dislike.current_ip.to_json).exists?
  end
end
