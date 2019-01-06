class AddRpslossesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rps_losses, :integer
  end
end
