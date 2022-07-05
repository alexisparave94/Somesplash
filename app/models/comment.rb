class Comment < ApplicationRecord
  # Associations
  belongs_to :commentable, polymorphic: true, counter_cache: true
end
