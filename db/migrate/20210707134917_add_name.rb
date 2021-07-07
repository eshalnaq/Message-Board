class AddName < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :name, :text
  end
end
