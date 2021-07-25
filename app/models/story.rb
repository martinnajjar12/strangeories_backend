class Story < ApplicationRecord
  cattr_accessor :current

  has_many :likes
  has_many :dislikes
  belongs_to :author
end
