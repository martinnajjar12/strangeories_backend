class StorySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :description, :image_url, :my_image

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

  def my_image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end
