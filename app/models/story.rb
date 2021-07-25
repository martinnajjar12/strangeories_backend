class Story < ApplicationRecord
  validates_prescense_of :title, :description, :image_url

  has_many :likes
  has_many :dislikes
  belongs_to :author
end
