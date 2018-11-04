class AddRpswinsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rps_wins, :integer
  end
end
