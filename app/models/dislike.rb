class Dislike < ApplicationRecord
  validates :author_id, uniqueness: { scope: :story_id }

  belongs_to :story
  belongs_to :author
end
