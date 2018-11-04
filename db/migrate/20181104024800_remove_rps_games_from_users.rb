class RemoveRpsGamesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rps_games, :integer
  end
end
