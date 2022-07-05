class Photo < ApplicationRecord
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :description, length: { in: 5..200 }

  # Associations
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy
end
