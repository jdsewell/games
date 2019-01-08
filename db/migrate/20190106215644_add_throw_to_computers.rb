class AddThrowToComputers < ActiveRecord::Migration[5.2]
  def change
    add_column :computers, :throw, :string
  end
end
