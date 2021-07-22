class CommentsUpdate < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :name, :text
    add_column :comments, :content, :text
  end
end
