class UsersAddAboutme < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :aboutme, :text
  end
end
