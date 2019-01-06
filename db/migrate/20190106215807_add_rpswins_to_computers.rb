class AddRpswinsToComputers < ActiveRecord::Migration[5.2]
  def change
    add_column :computers, :rps_wins, :integer
  end
end
