class Comment < ApplicationRecord
  # Validations
  validates :content, length: { in: 5..100 }

  # Associations
  belongs_to :commentable, polymorphic: true, counter_cache: true
end
