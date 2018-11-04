class AddRpsgamesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rps_games, :integer
  end
end
