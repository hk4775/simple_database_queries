class AddCommentsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments, :integer
  end
end
