class ConnectCategoriesWithPosts < ActiveRecord::Migration
  def up
    add_column :posts, :category_id, :integer, :foreign_key =>true
  end

  def down
    remove_column :posts, :category_id
  end
end
