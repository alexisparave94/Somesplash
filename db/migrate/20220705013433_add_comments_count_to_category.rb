class AddCommentsCountToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :comments_count, :integer
  end
end
