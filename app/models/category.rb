class Category < ApplicationRecord
  # Associations
  has_many :photos, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
end
