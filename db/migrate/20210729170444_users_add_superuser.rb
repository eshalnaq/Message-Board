class UsersAddSuperuser < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :superuser, :boolean

  end
end
