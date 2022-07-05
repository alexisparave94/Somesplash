class Comment < ApplicationRecord
  # Validations
  validates :content, length: { in: 5..200 }

  # Associations
  belongs_to :commentable, polymorphic: true, counter_cache: true
end
