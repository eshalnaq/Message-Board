class UsersAddDisplayname < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :displayname, :text
  end
end
