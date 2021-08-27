class Like < ApplicationRecord
  validates_uniqueness_of :author_id, scope: :story

  belongs_to :story
  belongs_to :author
end
