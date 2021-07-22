class CommentsAddMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :message_id, :integer
  end
end
