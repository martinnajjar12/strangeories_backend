class Story < ApplicationRecord
  validates_presence_of :title, :description, :image

  has_one_attached :image
  has_many :likes
  has_many :dislikes
  belongs_to :author
end
