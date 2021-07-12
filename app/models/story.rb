class Story < ApplicationRecord
  cattr_accessor :current

  has_many :likes
  has_many :dislikes
end
