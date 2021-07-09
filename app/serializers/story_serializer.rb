class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :image_url

  has_many :likes
  has_many :dislikes

  class LikeSerializer < ActiveModel::Serializer
    attributes :count
  end

  class DislikeSerializer < ActiveModel::Serializer
    attributes :count
  end
end
