class StorySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :description, :image

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

  def image
    return unless object.image.attached?

    object.image.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    url_for(object.image)
  end
end
