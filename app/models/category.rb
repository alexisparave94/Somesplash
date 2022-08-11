class Category < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :description, length: { in: 5..200 }

  # Associations
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_one_attached :cover
end
