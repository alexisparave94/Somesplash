class Photo < ApplicationRecord
  # Associations
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
end
