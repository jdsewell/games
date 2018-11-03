class AddThrowToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :throw, :string
  end
end
