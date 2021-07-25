class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url

  has_many :likes
  has_many :dislikes
  belongs_to :author

  class LikeSerializer < ActiveModel::Serializer
    attributes :count
  end

  class DislikeSerializer < ActiveModel::Serializer
    attributes :count
  end

  class AuthorSerializer < ActiveModel::Serializer
    attributes :name
  end
end
